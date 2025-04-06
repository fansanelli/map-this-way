# Elenco dei controlli

- roundaboutwithname

Normalmente le rotatorie sono collegamenti stradali senza un nome. Verifica che non sia presente la chiave "name" sulle rotatorie oppure che sia "Rotatoria X" o "Rotonda Y" (ma non, ad esempio, "Via Z").

- invaliddug

Gli odonimi (nomi delle strade) sono "normalizzati" tramite l'elenco ufficiale:

https://registry.geodati.gov.it/dug

Per altre info su come mappare le strade, vedi anche: https://wiki.openstreetmap.org/wiki/IT:Editing_Standards_and_Conventions#Nomi_delle_strade

- nolivingstreet

Non è previsto l'uso del tag highway=living_street in Italia.

- unusualmaxspeed

Verifica che la velocità massima sia tra 5 e 130 km/h (da 5 a 20 a multipli di 5 e poi a multipli di 10)

- maxspeedhigh

Verifica che non ci sia un limite di velocità che può far pensare ad un errore, es. residenziale con limite superiore ai 50 km/h

- refwithspace

Verifica che sulle strade il tag "ref" non contenga spazi o ";" (punto e virgola). Vedi: https://wiki.openstreetmap.org/wiki/IT:Italian_Roads_Tagging#ref

