# Weather_app 3

Skill assessment: settimana 6

## Improvements

### Packages

- package **floor**:
    - libreria che permette di autogenerare codice per semplificare la gestione di database SQLite
      al fine di memorizzare dati in locale nel dispositvo iOS/Android utilizzato. La tabella creata
      all'interno del database conterrà i dati meteo di ogni città ottenuti dall'ultima richiesta
      all'API. Ogni volta che vengono ottenuti nuovi dati da remoto questi vengono salvati nel  
      database con la data e orario di reperimento;

- package **flutter_bloc**:
    - libreria per lo state management che aiuta ad implementare il design pattern BloC nell'app:  
      si cerca di separare la presentazione dalla logica di business, facilitando la manutenzione
      del codice e la sua riusabilità;
    - il package fornisce anche widget che facilitano l'aggiornamento della UI al cambiare dello    
      stato del bloc.

### Architecture

Come modifica principale al funzionamento della weather app 2 è stato proposto di salvare i dati in
un database una volta ricevuti dalla richiesta all'API. È stato quindi introdotto il concetto di **
Repository pattern** (pratica per il reperimento e salvataggio dei dati in locale) e di **Single
Source of Truth**. Secondo quest'ultimo i dati passati alla UI devono provenire dallo stesso data
source, anche in presenza più sorgenti. Nel nostro caso la UI mostra sempre i dati presenti in un
database locale. All'interno di questo, i dati meteo vengono salvati/aggiornati quando si ritiene
opportuno eseguire un fetch da remoto, ovvero quando viene selezionata una città diversa, si naviga
nella pagina in dettaglio oppure se i dati nel database hanno perso la loro validità temporale. I
vantaggi del repository pattern sono quelli di avere sempre dati pronti ad essere visualizzati che
rende i tempi di caricamento nettamente più brevi rispetto al dover aspettare la risposta di un
server remoto, e la possibilità di utilizzare l'app anche in assenza di connessione. Nel caso della
nostra app, che ha il compito di mostrare dati meteo in tempo reale, viene comunque visualizzato un
errore se i dati presenti nel database sono più vecchi del periodo di validità e non è stato
possibile aggiornarli.

L'architettura dell'app è stata realizzata seguendo un pattern **MVP (Model - View - Presenter)**:

- Il **Model** gestisce la logica di reperimento e salvataggio dei dati (in questo caso esso è  
  rappresentato dalle classi di domain: repositories); Mantiene lo stato applicativo;
- La **View** rappresenta la UI (i widgets in questo caso) dell'applicazione quindi visualizza le  
  informazioni e interagisce con l'utente. Inoltre passa le richieste dell'utente al presenter (
  mediante eventi) e viene aggiornata in base allo stato dello stesso;
- Il **Presenter** si pone al centro dell'architettura: riceve le richieste dalla view, interroga il
  model per ottenere le informazioni e le passa alla vista. Nel nostro caso questo è rappresentato
  dal Bloc.

Un altro pattern architetturale considerato è stato quello di **MVC (Model - View - Controller)**:

- Il **Model** ha il compito di catturare lo stato dell'applicazione facendolo osservare alla UI
  perché si aggiorni a seconda di quest'ultimo; Nel nostro caso sarebbe rappresentato dal Bloc;
- La **View** rappresenta sempre la UI ma in questo caso passa le richieste dell'utente al  
  controller;
- Il **Controller** riceve i comandi dell'utente attraverso la view che vengono gestiti grazie
  all'accesso al data layer tramite repository e alla logica presente al suo interno. Una volta  
  elaborati i comandi in input li attua, modificando lo stato del model che a sua volta gestisce la
  UI in base al suo stato.

La scelta è ricaduta sul primo pattern architetturale in quanto ho interpretato la classe Bloc come
gestore dello stato della UI (Presenter) e 'ponte' verso la logica applicativa. La UI osserva lo
stato mantenuto dal Bloc tramite i Widget come BlocBuilder per modificarsi a seconda di
quest'ultimo.

Nel caso della weather app è stata inserita una singola classe Cubit (classe Bloc semplificata che  
non fa affidamento a eventi per elaborare un nuovo stato ma sfrutta i metodi pubblici per farlo) che
conserva  
lo stato di fetching dei dati. La classe stato (WeatherFetchState) è stata realizzata grazie a  
freezed con quattro diverse implementazioni tramite factory constructors:

- loading: l'utente ha richiesto l'aggiornamento dei dati e il cubit attende la risposta della  
  repository
- hasData: la repository ha risposto alla richiesta con dei dati validi
- noConnectionError: la repository ha risposto alla richiesta con un errore relativo alla
  comunicazione con l'API (es: il dispositivo non è connesso a internet o è passato troppo tempo per
  mandare la richiesta al server o ricevere la response)
- error: la repository ha risposto alla richiesta con un qualsiasi altro tipo di errore (database,
  http status, generico...)

#### Servizi e Repositories

- **Services**, creati come implementazioni di classi astratte seguendo il pattern di **Inversion of
  Control** (aka Dependency Inversion):
    - **WeatherApiService**: servizio che espone il metodo per la chiamata all'openweather API;

    - **WeatherDBService**: servizio che espone i metodi per cercare dati meteo di una città nel    
      database e per salvarli nello stesso;

    - **CityKeyValueService**: servizio che si occupa di recuperare l'id dell'ultima città salvata
      come key-values e aggiornarla quando ne viene selezionata una diversa.

- **Repositories**:
    - **WeatherRepository**: prende come dipendenze l'ApiService e il DBService e gestisce da dove
      recuperare i dati secondo le esigenze. Il metodo getWeatherByCityId controlla se è stata    
      selezionata una nuova città o se gli ultimi dati salavati nel database non sono più validi: in
      questo caso recupera i dati da remoto tramite l'ApiSerice e aggiorna i dati nel database
      tramite il DBService (se la chiamata non va a buon fine ritorna errore). In caso contrario
      recupera i dati in locale. Se in locale non sono presenti dati va in remoto;

    - **CitiesRepository**: delega al CityKeyValueService il recupero e l'aggiornamento della città
      salvata come key-value. Inoltre contiene la lista delle città che è possibile selezionare  
      nell'app.

### Modularizzazione

L'app è stata suddivisa in tre layers (packages):

- **App/UI**: contiene il file main.dart e i componenti della UI (widgets, bloc (presentation) ...).
  Ha come dipendenze gli altri due packages;
- **Domain**: dart package (non ha dipendenze da flutter SDK) che non ha dipendenze dagli altri
  layers. Contiene gli elementi di Business Logic e classi per la gestione dei dati (
  Repositories...). Le repositories dipendono da interfacce dei servizi definite nello stesso domain
  layer;
- **Services**: contiene le implementazioni dei servizi per la comunicazione con data source
  remoto (API) e locale (DB)