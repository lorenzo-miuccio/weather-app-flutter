# Weather_app MVC

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

- package **get_it**:
    - semplice Service Locator che può sostituire l'uso di InheritedWidget o Provider per accedere
      agli oggetti, ad esempio dalla UI.

### Architecture

Pattern architetturale riprodotto: **MVC (Model - View - Controller)**:

- Il **Model** ha il compito di catturare lo stato dell'applicazione facendolo osservare alla UI
  perché si aggiorni a seconda di quest'ultimo;
- La **View** rappresenta la UI; questa passa le richieste dell'utente al  
  controller;
- Il **Controller** riceve i comandi dell'utente attraverso la view. Questi vengono gestiti grazie
  all'accesso al data layer tramite repositories e alla logica presente al suo interno. Una volta  
  elaborati i comandi in input li attua, modificando lo stato del model.

Nel nostro caso il **model** è rappresentato da un Cubit (classe Bloc semplificata che  
non fa affidamento a eventi per elaborare un nuovo stato ma sfrutta i metodi pubblici per farlo) che
conserva lo stato di fetching dei dati. La classe stato (WeatherFetchState) è stata realizzata
grazie a freezed con quattro diverse implementazioni tramite factory constructors:

- loading: l'utente ha richiesto l'aggiornamento dei dati e si attende la risposta della repository
- hasData: la repository ha risposto alla richiesta con dei dati validi
- noConnectionError: la repository ha risposto alla richiesta con un errore relativo alla
  comunicazione con l'API (es: il dispositivo non è connesso a internet o è passato troppo tempo per
  mandare la richiesta al server o ricevere la response)
- error: la repository ha risposto alla richiesta con un qualsiasi altro tipo di errore (database,
  http status, generico...)

Per il **controller** è stata definita la classe WeatherController con al suo interno metodi che
sono chiamati dalla UI sfruttando la potenzialità del package get_it. Questi metodi vengono chiamati
dalla ui in risposta ad un input dell'utente, ad esempio per il refresh del meteo o per la richiesta
dei dati per una nuova città selezionata. Il controller prende come dipenze tramite costrutture sia
le repositories, per delegare il fetching dei dati, sia il cubit per aggiornare lo stato che verrà
riflesso dalla UI.

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

L'app è stata suddivisa in tre layer (packages):

- **App/UI**: contiene il file main.dart e i componenti della UI (widgets, bloc (presentation) ...).
  Ha come dipendenze gli altri due packages;
- **Domain**: package che non ha dipendenze dagli altri layer. Contiene gli elementi di Business
  Logic e classi per la gestione dei dati (Repositories...). Le repositories dipendono da interfacce
  dei servizi definite nello stesso domain layer. Non avendo dipendenze dal flutter SDK, si tratta
  di un dart Package;
- **Services**: contiene le implementazioni dei servizi per la comunicazione con data source
  remoto (API) e locale (DB)