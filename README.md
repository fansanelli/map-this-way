# Map This Way

Controlli "mapcss" pensati per chi mappa in Italia :it:

## SETUP

Da JOSM:
- Modifica -> Preferenze -> Validatore dati (menu laterale) -> Regole controllo etichette
- Aggiungi (icona + in alto a destra)
- Indirizzo URL: https://raw.githubusercontent.com/fansanelli/map-this-way/master/MapThisWay.validator.mapcss
- OK

## DEV (WIP)

Per generare il file MapThisWay.validator.mapcss con tutti i controlli eseguire:

`$ ./make.sh`

## CONTROLLI (WIP)

I controlli sono suddivisi per tipologia e si trovano nella cartella validators:

- [addresses](validators/addresses/addresses.md)
- [combinations](validators/combinations/combinations.md)
- [highways](validators/highways/highways.md)
- [hiking](validators/hiking/hiking.md)
- [phones](validators/phones/phones.md)
- [schools](validators/schools/schools.md)
- extras - controlli non specifici per l'Italia che potrebbe aver senso spostare direttamente in JOSM o in un altro foglio.

## CONTRIBUTE

- ti piace il mio progetto? Clicca sulla stella in alto a destra (occorre fare la registrazione gratuita a GitHub)
- segnala problemi con i controlli esistenti o suggeriscine di nuovi

## ABOUT MAPCSS

- https://josm.openstreetmap.de/wiki/Help/Styles/MapCSSImplementation
- https://josm.openstreetmap.de/wiki/Help/Validator/MapCSSTagChecker
