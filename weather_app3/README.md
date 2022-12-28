# Weather_app 2

Skill assessment: settimana 4

## Improvements
- package **dio**:
  - package utilizzato per fare chiamate http alla open weather API. Mediante l'uso degli interceptors sono state variate le request options (es: timeout error dopo tot secondi dall'invio della richiesta o la ricezione della risposta)
- pakage **build_runner**: code generator codice utilizzato per i seguenti packages
  - package **retrofit**:
    - package utilizzato per definire una classe che funge da client per eseguire chiamate API in get e ricevere i dati del meteo della città selezionata
  - packages **json_serializable/_annotation**:
    - packages utilizzati per generare classi entità che mimano i json desiderati contenuti nella risposta dell'API. Tramite i metodi fromJson autogenerati è possibile mappare i json in istanze delle rispettive classi create.  
  - package **freezed**:
    - utilizzato per gestire il widget WeatherSection in relazione allo stato del fetching dei dati meteo o eventuali errori nella chiamata API.
    
