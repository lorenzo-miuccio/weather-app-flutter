# Weather_app 3

Skill assessment: settimana 6

## Improvements

### Packages

- package **floor**:
    - libreria che permette di autogenerare codice per semplificare la gestione di database SQLite  
      al fine di memorizzare dati in locale nel dispositvo iOS/Android utilizzato. La tabella
      creata  
      all'interno del database conterrà i dati meteo di ogni città ottenuti dall'ultima richiesta  
      all'API. Ogni volta che vengono ottenuti nuovi dati da remoto questi vengono salvati nel
      database con la  
      data e orario di reperimento;

- package **flutter_bloc**:
    - libreria per lo state management che aiuta ad implementare il design pattern BloC nell'app:
      si  
      cerca di separare la presentazione dalla logica di business, facilitando la manutenzione del  
      codice e la sua riusabilità;
    - il package fornisce anche widget che facilitano l'aggiornamento della UI al cambiare dello  
      stato del bloc.

### Architecture

L'architettura dell'app è stata realizzata seguendo un pattern **MVP (Model - View - Presenter)**:

- Il **Model** gestisce la logica di reperimento e salvataggio dei dati (in questo caso esso è
  rappresentato dalle classi di domain: repositories);
- La **View**  rappresenta la UI (i widgets in questo caso) dell'applicazione quindi visualizza le
  informazioni e interagisce con l'utente. Inoltre passa le richieste dell'utente al presenter (
  mediante eventi) e viene aggiornata in base allo stato dello stesso;
- Il **Presenter** si pone al centro dell'architettura: riceve le richieste dalla view, interroga il
  model per ottenere le informazioni e le passa alla vista. Nel nostro caso questo è rappresentato
  dal Bloc.

Un altro pattern architetturale considerato è stato quello di **MVC (Model - View - Presenter)**:

- Il **Model** ha il compito di catturare lo stato dell'applicazione e aggiornare l'interfaccia
  utente (View) in base ad esso. Nel nostro caso sarebbe rappresentato dal Bloc.
- La **View**  rappresenta sempre la UI ma in questo caso passa le richieste dell'utente al
  controller;
- Il **Controller** riceve i comandi dell'utente attraverso la view che vengono gestiti grazie all'
  acceso al data layer tramite repositories e alla logica presente al suo interno. Una volta
  elaborato i comandi in input li attua modificando lo stato del model che a sua volta gestisce la
  UI in base al suo stato.

La scelta è ricaduta sul primo pattern architetturale in quanto la classe Bloc è stata pensata
come 'ponte' per intercettare le richieste dell'utente, catturate dalla UI e tradotte in 'eventi' da
passare al layer Bloc, e indirizzarle al modello (repositories) per la gestione dei dati. In base
anche alla risposta del modello il Bloc aggiornerà lo stato dell'applicazione in base a cui verrà
rebuildata la UI.

Nel caso della weather app è stata inserita una singola classe Cubit (classe Bloc semplificata che
non fa affidamento a eventi per elaborare un nuovo stato ma sfrutta metodi per farlo) che conserva
lo stato di fetching dei dati. La classe stato (WeatherFetchState) è stata realizzata grazie a
freezed con quattro diverse implementazioni tramite factory constructors:

- loading: l'utente ha richiesto l'aggiornamento dei dati e il cubit attende la risposta della
  repository
- hasData: la repository ha tornato i dati senza errori
- noConnectionError: la repository ha tornato un errore relativo alla comunicazione con l'API (es:
  il dispositivo non è connesso a internet o è passato troppo tempo per mandare la richiesta al
  server o ricevere la response)
- error: la repository ha tornato un qualsiasi altro tipo di errore (database, http status,
  generico...)

è stato inoltre introdotto il concetto di Repository pattern (pratica per il reperimento e
salvataggio dei dati in locale) e di single source of truth secondo cui i dati passati alla UI
devono provenire dallo stesso data source. Nel nostro caso la UI mostra sempre i dati presi dal
database all'interno del quale sono salvati/aggiornati quando si ritiene opportuno eseguire un fetch
dei dati meteo da remoto, ovvero quando viene selezionata una città diversa, si naviga nella pagina
in dettaglio oppure se i dati nel database hanno perso la loro validità temporale. I vantaggi del
repository pattern sono quelli di avere sempre dati pronti a

- Services, creati come implementazioni di classi astratte seguendo il pattern di Inversion of  
  Control:
    - WeatherApiService: servizio che espone il metodo per la chiamata all'open weatherApi;

    - WeatherDBService: servizio che espone i metodi per cercare dati meteo di una città nel  
      database e per salvarli nello stesso;

    - CityKeyValueService: servizio che si occupa di recuperare l'id dell'ultima città salvata come
      key-values e aggiornarla quando ne viene selezionata una diversa.

- Repositories:
    - **WeatherRepository**: prende come dipendenze l'ApiService e il DBService e gestisce da dove  
      recuperare i dati secondo le esigenze. Il metodo getWeatherByCityId controlla se è stata  
      selezionata una nuova o se il timer di validità dei dati è scaduto (null): in questo caso  
      recupera i dati da remoto tramite l'ApiSerice, aggiorna i dati nel database tramite il  
      DBService e restarta il timer il quale allo scadere del tempo effettuerà in automatico una  
      richiesta all'Api aggiornando in seguito i dati nel database (se la chiamata non va a buon  
      fine ritorna errore). In caso contrario recupera i dati in locale. Se in locale non sono  
      presenti dati va in remoto;

    - **CitiesRepository**: delega al CityKeyValueService il recupero e l'aggiornamento della città
      salvata come key-value. Inoltre contiene la lista delle città che è possibile selezionare
      nell'app;  
  
