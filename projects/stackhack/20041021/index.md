<!-- 
.. title: StackHack - StackHack omgång 20041021
.. slug: 20041021
.. description:
-->

> Efter viss förvirring hos den enfaldige domaren samlades bidragen upp klockan 21.00 SET (Stackens Egen Tidszon). Tre bidrag inkom - från Fredrik Arnerup, Rasmus Kaj. Ett felformatterat bidrag hittades även i Magdas hemkatalog.

 Som av en ren slump hade domarna i förväg beslutat att dela ut priser i tre klasser. Klasserna och vinnarna presenteras här. 

{{% 2split-start %}}

## Klass: Strukturerad spagetti
Vinnare: foo

### Motivering
För hans förmåga att ta spagetti-programmering till nya nivåer och på ett förtjänstfullt sätt grafiskt åskådliggöra detta.

### Beskrivning
pgmake är en parallell grafisk make. Programmet läser en Makefile (klarar en delmängd av Makefile-syntaxen) och visar en grafisk (kräver X) representation av beroenden och targets i Makefilen. När användaren trycker på knappen "Bygg" så försöker pgmake bygga alla targets genom att starta en tråd för varje nod i grafen. Varje tråd väntar tills eventuella beroenden har blivit tillfredställda och exekverar sedan kommandot som krävs för att skapa nodens target. Om det gick bra blir noden grön, om det gick dåligt blir noden röd. Noder som representerar filer som förväntas existera a priori är fyrkantiga, övriga runda.

* README.txt
* Skärmdump från programmet
* Programmet och några exempelfiler

(Tyvärr har filerna försvunnit)


## Klass: Pedagogik
Vinnare: kaj

### Motivering
För hans mycket pedagogiska exempel på ineffektiv programmering med hjälp av pipor. Kort och gott ett skolboksexempel.

### Beskrivning
Bidraget är uppdelat i två delar - ett som genererar tal, och ett annat som via en finurlig fork()-bomb listar ut vilka av de genererade talen som är primtal.

* README
* primfilter.c

(Tyvärr har filerna försvunnit)

{{% 2split-middle %}}

## Klass: Gammal är äldst
Vinnare: A.nonym

Eftersom den README.txt som enligt reglerna saknades har vi ingen aaaaning om varifrån detta bidrag kom.

### Motivering
För hans eller hennes förmåga att bevisa att en ålderdomlig processor är fullt kapabel till äkta parallellitet genom att utföra sexton samtidiga additioner i samma klockcykel.

### Beskrivning
Programmet räknar antalet ettställda bitar i ett tar, genom att använda en algoritm från 1954, enligt Knuth. Algoritmen går ut på att successivt addera bitarna i större och större klumpar i en träd-struktur. Notera särskilt användningen av många variabler och loopar.

* concurrent.c

(Tyvärr har filen försvunnit)

{{% 2split-end %}}
