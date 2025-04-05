# Elenco dei controlli

- invalidphone

I numeri di telefono in Italia vanno inseriti come indicato nella Pagina Wiki:

https://wiki.openstreetmap.org/wiki/Key:phone#Italy

Il formato valido è ITU-T E.164 (https://wiki.openstreetmap.org/wiki/Key:phone#Usage), ma alcune librerie (come Google libphonenumber) non lo rispettano alla lettera (probabilmente per leggibilità) e mettono uno spazio extra, questo non viene indicato come errore perché alcuni editor come Vespucci formattano in automatico i numeri di telefono e sarebbe un disastro.

Sempre secondo la wiki:

https://wiki.openstreetmap.org/wiki/Key:phone#How_to_map

esiste un modo più accurato di mappare i cellulari quindi viene richiesto di usare 'contact:mobile' oppure 'phone:mobile' per essi.

Infine, per i "numeri verdi" vanno usati i tag 'contact:phone:IT' oppure 'phone:IT', vedi:

https://wiki.openstreetmap.org/wiki/Key:phone#Support_for_multiple_countries

"for standard toll free call only from Country code (ndr)"

- invalidmobilephone

Validazione del numero di cellulare (vedi invalidphone)

- invalidtollfree

Validazione dei numeri verdi "800" (vedi invalidphone)

