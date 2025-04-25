# Hiking

## Elenco dei controlli

- caiscaleonway

Tag specifico per le relazioni, fa riferimento alla definizione di difficoltà del CAI "Club Alpino Italiano". Non va utilizzato sulle way

- unknowncaiscale

Verifica che sul per la chiave cai_scale sia specificato un valore valido. Vedi:

https://wiki.openstreetmap.org/wiki/Proposal:Cai_scale#Examples

- refrei

Verifica che il valore usato per come ref:REI sia verosimile (tramite match di un pattern)

- missingcairef

Quando è presente un ref:REI valido è necessario specificare anche un "ref". È possibile usare la funzione "correggi" per calcolarlo

- invalidcairef

Quando è presente un ref:REI valido, il "ref" deve essere coerente. È possibile usare la funzione "correggi" per calcolarlo

- unknowncaisourceref

Verifica che il valore usato per come source:ref sia verosimile (tramite match di un pattern)

- refalreadyonrel 

Verifica se per le relazioni specifiche per escursionismo la chiave ref sia solo sulla relazione e non sui singoli tratti di strada
NOTA: Questo controllo non è specifico per l'Italia

- wrongroleguidepost

Verifica che quando un segnavia è stato aggiunto in una relazione, abbia anche il ruolo corretto (guidepost).
Vedi: https://wiki.openstreetmap.org/wiki/Hiking#Roles
NOTA: Questo controllo non è specifico per l'Italia

