<!--
.. title: Nej, jag vill inte vänta tills vi har rätt sladdar.
.. slug: esselte-hack
.. date: 2024-08-29 18:30 CEST
.. description: Esselte datorn från displaymontern får nytt liv.
.. category: 2024
-->

Jag (John Lorentzson), Rasmus Kaj och Martin Björnebro satt en kväll
(2024-07-25) och pratade om några olika datorer som står i
displaymontern i Stackens lokal, bland annat den svenska datorn
Esselte 100 från cirka 1980. Sladdar saknades, men det var inte ett
problem.

<!-- TEASER_END -->

Med ett chassi byggt som en stridsvagn (eller iallafall som en Volvo
740) och ett tangentbord som känns som trött yogurt i en rostig skål
är Esselte 100 inte den mest ergonomiska datorn att använda. Den
vinner inte heller I/O tävlingen med två proprietära portar för
printer och kassettbandspelare, och ingen (extern)
expansionsport. Naturligtvis försökte vi få igång den.

## Ström

Det första problemet var att vi inte kunde hitta något 9 volt
nätaggregat. Det andra problemet var att vi inte visste om kontakten
var center positive eller center negative. Vi har något av en brist på
elektronikutrustning så det fanns inte mycket vi kunde göra åt det
första problemet. Det andra problemet kunde vi lösa genom att skruva
isär datorn. Jag skruvade loss ena sidan och upptäckte att sladdarna
var artigt färgkodade och att det var center positive. Då återstod
problemet att faktiskt få in strömmen i maskinen.

Som sagt hade vi inget bra 9 volt nätaggregat, så jag började gräva i
batterilådan. Det fanns inga 9 volt batterier där, men det fanns några
AA batterier (eller "LR6", som Martin insisterar att jag kallar
dem). Bra nog! Med 6 stycken batterier i hand var jag redo att sätta
igång.

Steg 1 var att sätta fast en sladd i jord. Jag fiskade ut en passande
jordig sladd (dvs. grön och gul) ur en verktygslåda och började
försöka sätta fast den i ringen på RCA jacket som strömmen ska komma
in genom. Efter cirka 15 minuter av skruvande och klämmande behövde
jag ge upp. Jag bestämde mig att någon skulle behöva hålla fast den
sladden.

Sedan behövdes en till sladd för plussidan. Det var lite svårare
eftersom det inte finns någon stor praktisk punkt att använda. Jag
kunde heller inte hitta en bra sladd så jag tog två mätsladdar från
multimeters och satte ihop dem så att vi hade en lång sladd med spets
på båda ändar. Någon får hålla fast den också.

Sedan behövde vi seriekoppla batterierna och det finns många
möjligheter här. Man kan till exempel:

- lägga dem bredvid varandra med alternerande riktning och tejpa fast
  aluminium folie på ändarna
- använda en riktig batterihållare
- balansera alla 6 batterier uppåt och satsa huset på att de inte
  faller (en marginellt bättre idé än tro på att hästar finns), eller
- lägga batterierna i någon sorts ränna.
    
    
Den sista lösningen verkade enklast, så jag och Rasmus började leta
efter något som kunde passa.

Nästan direkt hittade Rasmus en hyllkonsol. Perfekt. Batterierna är
för stora för att faktiskt gå ner i rännan, men det var inte
nödvändigt. Den ger en bra lutning som kan hålla ihop batterierna
genom dragningskraften, men batterierna glider inte av, och det är
allt jag någonsin kan be en hyllkonsol att göra. För att se till att
den stod upp klämde vi in ena ändan under en datorskärm.

![](/images/esselte-batteri.jpg){: style="width: 50%" }

Det sitter en liten lysdiod på datorn och jag bestämde mig att allt
jag behövde var att se den lysa, sedan skulle jag vara nöjd. Vi
placerade batterierna i "magasinet" och tejpade fast jordsladden till
minussidan på batteriet längst bak. Rasmus höll fast plussidan med de
kombinerade mätsladdarna, jag höll fast jord sladden, och datorn kom
till liv. Alla var nöjda.

## Video

Jag var inte nöjd. Nu när vi visste att datorn tog emot ström kändes
det nödvändigt att se den generera en bild. Jag kan inte exakt
förklara *varför* det kändes nödvändigt, men det var det, på samma
sätt som det är *nödvändigt* att säga "hö hö" när man ser schackfärgen
på julafton.

Vi hade en TV redo att använda, men ingen antennsladd kunde
hittas. Ett alternativ behövdes. Just då kastade Harald Barth en Cat 5
kabel på golvet som han sa var trasig. Plastflärparna som brukar
hjälpa kontakten förbli kopplad saknades på båda sidorna. Jag kastade
mig på den nästan direkt och drog genast till mig närmaste sax.

Lite kabelvåld och kabeltvinning senare hade jag min antennkabel. Den
hade gått från twisted pair till twisted octet (alla trådar
hoptvinnade). Sen var det bara att klämma in min fina antennsladd i
jacken på både TV:n och datorn.

Och till sist var det den där "jord" grejen som är så viktig. Normalt
sätt delar TV:n och datorn jord genom den yttre ringen på
antennsladden, men i vårt fall fanns det ingen ring, så en extern
jordkoppling behövdes. Jag tittade runt i lokalen men inget verkade
passande. Antennjacket på TV:n sitter på baksidan och datorn stod
framför TV:n med sitt jack på höger sida.

Efter ett tag kom Harald med lösningen: ståltråd. En lång bit ståltråd
sattes i en ring runt utsidan av antennjacket på TV:n och leddes runt
sidan till någon passande punkt på datorn där den kunde våldsamt
klämmas in.

![](/images/esselte-coax.jpg){: style="width: 50%" }

Efter att kopplingen var testad med en multimeter satte vi på
TV:n. Det finns ingen garanti att datorn skickar sin bild på en
särskilt normal frekvens, så en kanalsökning var nödvändig. Som
tidigare applicerade jag och Rasmus ström medans Harald startade
kanalsökningen.

Efter ett tag hittade TV:n en kanal och vi tog bort strömmen. Man inte
kan lita på en TV att göra rätt sak i något tillfälle så vi väntade
ett par minuter så att hela kanalsökningen blev klar. Efter den var
klar valde vi den nya kanalen och satte ström i datorn igen.

![](/images/stacken-surgery.jpg){: style="width: 100%" }

En bild! Något suddig, men nästan läsbar om man redan vet vad det
står. Dicander skrev in det klassiska exempel programmet `10 PRINT
"STACKEN" \n 20 GOTO 10` och det fungerade helt okej. Något verkade
dock konstigt med texten, men med den här bildkvalitén spelar det
ingen roll. Datorn fungerar och det är den viktiga saken.
