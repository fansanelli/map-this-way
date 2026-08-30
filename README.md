# Map This Way

Regole di validazione MapCSS per migliorare la qualità dei dati OpenStreetMap in Italia.

## Il problema

OpenStreetMap consente di descrivere il territorio con grande libertà. È uno dei suoi punti di forza, ma rende anche facile introdurre errori difficili da individuare: combinazioni di tag incoerenti, formati non validi, convenzioni locali ignorate o informazioni formalmente corrette ma poco utili.

Molti di questi problemi possono essere riconosciuti nel momento migliore per correggerli: mentre i dati vengono modificati.

## Cosa fa Map This Way

Map This Way raccoglie controlli MapCSS pensati soprattutto per il contesto italiano. Le regole analizzano gli elementi caricati in JOSM e segnalano possibili errori o situazioni da verificare prima del caricamento su OpenStreetMap.

Il progetto non cerca di sostituire il validatore di JOSM. Lo estende con controlli più specifici, nati dall’esperienza di mappatura e organizzati in modo da poter essere discussi, testati e migliorati separatamente.

Alcune regole sono strettamente legate alle convenzioni italiane; altre potrebbero avere valore generale e diventare, in futuro, candidate per JOSM o per raccolte più ampie.

## Perché dentro JOSM

La qualità dei dati migliora quando il controllo è vicino all’azione che può introdurre l’errore.

Integrare le regole nel validatore di JOSM significa fornire un riscontro immediato, nello stesso ambiente in cui il mapper sta lavorando e prima che le modifiche vengano caricate. Non serve quindi esportare i dati, utilizzare un servizio separato o ricordarsi di eseguire una verifica successiva.

Tutti i controlli usano almeno il livello di validazione `warning` o `error`, perché il livello informativo è disattivato per impostazione predefinita in JOSM.

## Installazione

In JOSM:

1. Apri **Modifica → Preferenze → Validatore dati → Regole controllo etichette**.
2. Premi **Aggiungi**.
3. Inserisci questo indirizzo:

   ```text
   https://raw.githubusercontent.com/fansanelli/map-this-way/master/MapThisWay.validator.mapcss
   ```

4. Conferma con **OK**.

Il file [`MapThisWay.ignoretags.cfg`](MapThisWay.ignoretags.cfg) può essere configurato facoltativamente nelle preferenze del Validatore dati per ridurre alcuni avvisi quando si utilizza anche il livello informativo.

## Struttura delle regole

Le regole sorgente sono divise per argomento nella cartella [`validators`](validators):

- [addresses](validators/addresses)
- [amenities](validators/amenities)
- [combinations](validators/combinations)
- [highways](validators/highways)
- [hiking](validators/hiking)
- [landuses](validators/landuses)
- [natural](validators/natural)
- [phones](validators/phones)
- [schools](validators/schools)
- [unnecessary](validators/unnecessary)
- [zzz-extras](validators/zzz-extras) — controlli non specifici per l’Italia che potrebbero trovare posto direttamente in JOSM o in un’altra raccolta.

Il file [`MapThisWay.validator.mapcss`](MapThisWay.validator.mapcss) è generato automaticamente concatenando i file sorgente. Non va modificato direttamente.

Per rigenerarlo:

```bash
./make.sh
```

## Test

Accanto alle regole sono presenti file `.osm` di esempio costruiti per attivare controlli specifici.

Questi dati servono esclusivamente per verificare il comportamento delle regole in JOSM: **non devono essere caricati su OpenStreetMap**.

Quando si aggiunge o modifica un controllo è preferibile includere un esempio minimo che mostri sia il caso segnalato sia, quando utile, un caso che non deve produrre avvisi.

## Contribuire

Contributi, correzioni e nuove idee sono benvenuti.

Puoi:

- aprire una issue per segnalare un falso positivo o un caso non riconosciuto;
- proporre un nuovo controllo spiegando la convenzione o la fonte sulla quale si basa;
- inviare una pull request con la regola e i relativi dati di test;
- proporre lo spostamento in `zzz-extras` o verso JOSM dei controlli di interesse generale.

Le regole di validazione devono aiutare il mapper a prendere una decisione, non sostituirla: messaggi chiari, fonti verificabili e falsi positivi ridotti sono parte del progetto quanto il codice MapCSS.

## Risorse MapCSS

- [Implementazione MapCSS in JOSM](https://josm.openstreetmap.de/wiki/Help/Styles/MapCSSImplementation)
- [MapCSS TagChecker](https://josm.openstreetmap.de/wiki/Help/Validator/MapCSSTagChecker)

## Licenza

Map This Way è distribuito secondo i termini della [GNU General Public License v3.0 o successiva](LICENSE).
