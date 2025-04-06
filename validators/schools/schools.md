# Schools

## Elenco dei controlli

- ischedit

La chiave "isced:level" in Italia deve contenere un valore compreso tra 0 (scuola materna) e 3 (scuola superiore). Vedi:

https://wiki.openstreetmap.org/wiki/Key:isced:level#Conversion_of_local_terms

- scuolainfanzia

Verifica che la scuola materna sia indicata con il tag: amenity=kindergarten. Il tasto correggi va ad integrare o sostituire la chiave amenity.

- nidonotnursery

L'asilo nido va mappato come la scuola materna, ma è prevista l'aggiunta del tag: nursery=yes. Il tasto va ad integrare o sostituire la chiave amenity.

- scuolainfanzianoisced

Verifica che sugli elementi con amenity=kindergarten sia anche presente il tag "isced:level"=0.

- unkwnownschool

Verifica che sugli elementi con il tag amenity=school sia anche presente la chiave "isced:level".

- ischiednoscuole

Reciproco rispetto al controllo sopra, ogni elemento con chiave isched:level da 1 a 3, deve avere anche il tag amenity=school. Il tasto correggi va ad integrare o sostituire la chiave amenity.

-schoolbadname

Verifica la coerenza tra isched e name. Ad esempio, a "isched:level"=0 deve corrispondere un name che inizia per "Scuola materna" o "Asilo".

- schoolnoref

In Italia, i dati delle scuole sono anche forniti dal Ministero tramite il portale: https://unica.istruzione.gov.it/sic
Per andare ad abbinare il codice "meccanografico" si è scelto di usare la chiave: "ref". Una volta identificata la scuola si può copiare il valore in modo che rimanga il collegamento verso i dati ministeriali. Attenzione: sul sito vengono riportati sia i codici degli Istituti scolastici (ISS, IC) che delle scuole. Vedi anche: https://wiki.openstreetmap.org/wiki/IT:School

- unknownschoolref

A completamento di quanto sopra, questo controllo prova a trovare degli errori sfruttando dei pattern presenti nei codici delle scuole.


