# Weather_app 3

Skill assessment: settimana 6

## Improvements

### Packages

- package **floor**:
    - libreria che permette di autogenerare codice per semplificare la gestione di database SQLite
      al fine di memorizzare dati in locale nel dispositvo iOS/Android utilizzato. La tabella creata
      all'interno del database conterrà i dati meteo di ogni città ottenuti dall'ultima richiesta
      all'API. Ogni volta che vengono ottenuti nuovi dati questi vengono salvati nel database con la
      data e orario di reperimento;

- package **flutter_bloc**:
    - libreria per lo state management che aiuta ad implementare il design pattern BloC nell'app: si
      cerca di separare la presentazione dalla logica di business, facilitando la manutenzione del
      codice e la sua riusabilità;
    - il package fornisce anche widget che facilitano l'aggiornamento della UI al cambiare dello
      stato del bloc.

### Architecture

- è stata aggiunta una pagina che riporta ulteriori dettagli meteo, a cui si può navigare 'tappando'
  sull'icona del meteo riportata sulla home

- Services, creati come implementazioni di classi astratte seguendo il pattern di Inversion of
  Control:
    - WeatherApiService: servizio che espone il metodo per la chiamata all'open weatherApi;

    - WeatherDBService: servizio che espone i metodi per cercare dati meteo di una città nel
      database e per salvarli nello stesso;

    - CityKeyValueService: servizio che si occupa di recuperare l'id dell'ultima città salvata come
      key-values e aggiornarla quando ne viene selezionata una diversa.

- Repositories:
    - WeatherRepository: prende come dipendenze l'ApiService e il DBService e gestisce da dove
      recuperare i dati secondo le esigenze. Il metodo getWeatherByCityId controlla se è stata
      selezionata una nuova o se il timer di validità dei dati è scaduto (null): in questo caso
      recupera i dati da remoto tramite l'ApiSerice, aggiorna i dati nel database tramite il
      DBService e restarta il timer il quale allo scadere del tempo effettuerà in automatico una
      richiesta all'Api aggiornando in seguito i dati nel database (se la chiamata non va a buon
      fine ritorna errore). In caso contrario recupera i dati in locale. Se in locale non sono
      presenti dati va in remoto;

    - CitiesRepository: delega al CityKeyValueService il recupero e l'aggiornamento della città
      salvata come key-value. Inoltre contiene la lista delle città che è possibile selezionare
      nell'app;

- Nella directory bloc è stata inserita una classe Cubit che conserva lo stato di fetching dei dati.
  In relazione allo stato i widgets che mostrano i dati meteo vengono rebuildati per mostrare
  eventuali errori o fasi di caricamento:
    - La classe cubit prende come dipendenze tramite costruttore le WeatherRepository e la
      CitiesRepository

