# Weather_app 2

Skill assessment: settimana 4

## Improvements

### Packages :
- package **dio**:
  - package utilizzato per fare chiamate http alla open weather API. Mediante l'uso degli interceptors sono state variate le request options (es: timeout error dopo tot secondi dall'invio della richiesta o la ricezione della risposta);
- pakage **build_runner**: code generator codice utilizzato per i seguenti packages;
  - package **retrofit**:
    - package utilizzato per definire una classe che funge da client per eseguire chiamate API in get e ricevere i dati del meteo della città selezionata;
  - packages **json_serializable/_annotation**:
    - packages utilizzati per generare classi entità che mimano i json desiderati contenuti nella risposta dell'API. Tramite i metodi fromJson autogenerati è possibile mappare i json in istanze delle rispettive classi create;
  - package **freezed**:
    - permette di generare/'overridare' automaticamente metodi di uso comune come toString, operatore ==, metodo copyWith per clonare l'oggetto specificando diverse proprietà e metodi fromJson e toJson con l'aiuto di json_serializable. Inoltre permette di definire diverse implementazioni per la stessa classe grazie all'uso di factory constructors. Questa feature è stata sfruttata per definire la classe WeatherFetchState che rappresenta appunto lo stato del fetching dei dati meteo e eventuali errori nella chiamata all'API. In questo modo si può facilmente eseguire codice in base alle diverse situazioni.

### Architecture
Seguendo i principi **SOLID** sono state apportate modifiche ai ruoli di ciascun modulo dell'app, rendendo così il codice più facilmente mantenibile:

- Secondo il principio **single responsibility** sono stati ridotti i ruoli precedentemente attribuiti al notificatore (CityWeatherNotifier), lasciandogli il compito di tenere lo stato della città selezionata e dello stato del fetching dei dati meteo:
  - La logica di reperimento e update dell'ultima città selezionata dalla chiusura dell'app è stata inserita in una nuova classe apposita (SharedPreferencesService);

- Creazione di una classe **repository** che racchiude i metodi per recuperare i dati meteo dall'API. La repository funge da 'ponte' tra il data layer (in questo caso con una sola sorgente Remota: l'open weather api) e l'application layer (logica di business e presentazione). La repository viene istanziata una singola volta in cima al widget tree tramite **inherited widget**, cosicchè possa essere raggiungibile da tutti i widget del tree:
  - sfrutta la classe WeatherApiService che viene passata tramite costruttore per evitare alla stessa repository di dover istanziare l'oggetto che dovrà usare (**dependency injection**);

  - ha anche il compito di trasformare l'oggetto 'raw' che riceve dall'API (WeatherAPIResp) in un oggetto Weather (mediante un metodo definito come estensione della stessa classe) che verrà utilizzato dalla UI per mostrare i dati interessati;

- Seguendo il pattern di **Inversion of Control** è stata definita una classe astratta WeatherApiService utilizzata dalla repository per recuperare i dati da remoto. In questo modo la repository è indipendente dall'implementazione del service:
  - sono state definite due implementazioni del service, da utilizzare ad esempio in base all'environment desiderato;

  - la gestione di eventuali errori nella chiamata all'API è stata inserita come estensione alla classe future, così da poter essere utilizzata in eventuali altre richieste riutilizzando lo stesso codice.

- Nel widget CitiesWeatherPage è presente la funzione di refresh dei dati (eseguita alla pressione del floating button e allo swipe down sulla page) che delega alla repository il compito di effettuare la richiesta all'openWeather API come descritto sopra. La funzione inoltre aggiorna la variabile che rappresenta lo stato del fetching presente nel notifier.