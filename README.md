# Map This Way

Controlli "mapcss" pensati per chi mappa in Italia :it:

## SETUP

Da JOSM:
- Modifica -> Preferenze -> Validatore dati (menu laterale) -> Regole controllo etichette
- Aggiungi (icona + in alto a destra)
- Indirizzo URL: https://raw.githubusercontent.com/fansanelli/map-this-way/master/MapThisWay.validator.mapcss
- OK

ATTENZIONE: tutti i controlli utilizzano almeno il livello di validazione errore (warning ed error), in quanto il livello informativo è disattivo per default su JOSM. A livello sperimentale fatto nascere anche un 'MapThisWay.ignoretags.cfg' che si può scaricare e configurare nelle preferenze del Validatore dati per ridurre il numero di avvisi qualora si usi anche il livello informativo.

## CONTROLLI (WIP)

I controlli sono suddivisi per tipologia e si trovano nella cartella validators:

- [addresses](validators/addresses/addresses.md)
- [amenities](validators/amenities/amenities.md)
- [combinations](validators/combinations/combinations.md)
- [highways](validators/highways/highways.md)
- [hiking](validators/hiking/hiking.md)
- [landuses](validators/landuses/landuses.md)
- [natural](validators/natural/natural.md)
- [phones](validators/phones/phones.md)
- [schools](validators/schools/schools.md)
- [unnecessary](validators/unnecessary/unnecessary.md)
- extras - controlli non specifici per l'Italia che potrebbe aver senso spostare direttamente in JOSM o in un altro foglio.

Insieme ai vari controlli sono anche forniti degli esempi in formato .osm che sono puramente a scopo di test per far "scattare" dei controlli specifici e non vanno assolutamente caricati.

## DEV (WIP)

Per generare il file MapThisWay.validator.mapcss con tutti i controlli eseguire:

`$ ./make.sh`

## CONTRIBUTE

- ti piace il mio progetto? Clicca sulla stella in alto a destra (occorre fare la registrazione gratuita a GitHub)
- segnala problemi con i controlli esistenti o suggeriscine di nuovi

## ABOUT MAPCSS

- https://josm.openstreetmap.de/wiki/Help/Styles/MapCSSImplementation
- https://josm.openstreetmap.de/wiki/Help/Validator/MapCSSTagChecker
