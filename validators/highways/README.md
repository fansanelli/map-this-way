# Highways

## Elenco dei controlli

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

- crossingzebranouk

In Italia, non è previsto l'uso di crossing=zebra (tag esclusivo del Regno Unito). Per questa ragione è nata questa proposta:

https://wiki.openstreetmap.org/wiki/Proposal:Deprecate_crossing%3Dzebra_in_favor_of_crossing:markings#Countries_without_a_zebra_crossing_type

che prevede di utilizzare la combinazione di tag: crossing=uncontrolled + crossing:markings=zebra.
Il tasto correggi applica lo schema più recente.

- crossingmarked

Il tag crossing=marked veniva (viene?) proposto dal tasto correggi di iD ed è una delle varie scelte controverse fatte dall'editor: 

https://wiki.openstreetmap.org/wiki/Tag:crossing%3Dmarked#Editors

JOSM propone crossing=uncontrolled nei suoi preset e da quando esiste la chiave crossing:markings, questo tag è probabilmente obsoleto. 
Il tasto correggi applica lo schema più recente.

- crossingrefzebra

Non si è mai discusso dell'uso della chiave "crossing_ref" in Italia, perciò è meglio utilizzare come suggerito il tag: crossing:markings=zebra.
Il tasto correggi applica lo schema più recente.

- crossingref

Come già sopra, ma per gli altri casi c'è solo l'indicazione di usare "crossing:markings", la Wiki ha un sacco di esempi su come vanno mappati i vari casi:

https://wiki.openstreetmap.org/wiki/Key:crossing:markings#Examples

- segregatedwronghighway

La chiave segregated è utile solo per le piste ciclopedonali.
Per mapparle correttamente usare: highway=cycleway + foot=designated oppure highway=path + foot=designated + bicycle=designated.
Vedi la Wiki come riferimento:

https://wiki.openstreetmap.org/wiki/IT:Tag:highway%3Dcycleway#Informazioni_specifiche_per_l'Italia

- pathwithfootyes

Verifica se le chiavi foot e bicycle sono uguali al valore default confrontandoli con il tag highway=* (ed eventualmente motorroad=yes). Il tasto correggi rimuove il tag non necessario.
Per i valori default far riferimento alla wiki:
https://wiki.openstreetmap.org/wiki/OSM_tags_for_routing/Access_restrictions#Italy

- pedestrianwithoutbicycle

Secondo la wiki è meglio sempre specificare se è consentita la bici su aree pedonali: 
https://wiki.openstreetmap.org/wiki/Tag:highway%3Dpedestrian#Italy

- onelanenooneway

Quando su una highway è indicata solo una corsia è meglio definire anche se è una strada a senso unico.
NOTA: Questo controllo non è specifico per l'Italia

- onelanenopassingplaces

Se una strada con una sola corsia è a senso unico, meglio definire anche se sono frequenti degli slarghi, tramite il tag: passing_places=*.
Vedi: https://wiki.openstreetmap.org/wiki/Key:passing_places
NOTA: Questo controllo non è specifico per l'Italia

- onelanelanemarkings

Se una strada ha una sola corsia, non ha senso specificare il tag lane_markings=yes.
NOTA: Questo controllo non è specifico per l'Italia

- passingplacesmanylanes

Il tag passing_places=* prevede che ci sia solo una corsia.
NOTA: Questo controllo non è specifico per l'Italia

- citylimitwithoutdirection

Il tag traffic_sign=city_limit su una strada a doppio senso di marcia ha bisogno di un tag direction (backward o forward) per capire se stiamo entrando o uscendo in un confine territoriale.
NOTA: Questo controllo non è specifico per l'Italia

- citylimitwithoutcitylimit

Il tag traffic_sign=city_limit su una strada a senso unico ha bisogno di un tag city_limit (begin o end) per capire se stiamo entrando o uscendo in un confine territoriale.
Vedi: https://wiki.openstreetmap.org/wiki/Key:city_limit
NOTA: Questo controllo non è specifico per l'Italia

- trafficsingunconnected

Il tag traffic_sign=city_limit va connesso ad una way (preferibilmente non ad uno degli estremi se utilizzato in combinazione con direction).
NOTA: Questo controllo non è specifico per l'Italia

