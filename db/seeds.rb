# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

character_class = CharacterClass.create(name: "Berzerker")
character_class.virtues.create(
  name: "Furiat",
  description: "Siła Woli Weterana wzrasta na stałe o 2 pkt. Na początku starcia, w ramach darmowej akcji w swojej inicjatywie, Weteran wprowadza się w trans i wykonuje test Siły Woli. Za każdy poziom sukcesu, który uda mu się osiągnąć, otrzymuje jedną turę, w której wszystkie zadane mu Obrażenia zmniejszane są o połowę. Po upływie tego czasu, aby podtrzymać trans, co rundę wykonuje Trudny test Siły Woli. Jeżeli nie uda mu się go podtrzymać, zatrzymuje się oszołomiony na k6 tur, podczas których nie może czynnie atakować ani poruszać się, a jedynie bronić."
)
character_class.virtues.create(
  name: "Pogarda Śmierci",
  description: "Weteran śmieje się Hel prosto w twarz, mając śmierć za nic! Najważniejsze, by zabrać ze sobą jak najwięcej wrogów! Na początku każdego starcia, zanim ktokolwiek inny zdąży zareagować, Weteran może wydać z siebie szyderczy okrzyk, skupiający na nim uwagę Szeregowych przeciwników, którzy walczą z nim tak długo, aż nie zostaną zaatakowani przez kogoś innego. Doświadczeni i Elitarni przeciwnicy mogą obronić się przed działaniem okrzyku dzięki udanemu testowi Siły Woli. Jeżeli Weteran został zaskoczony, nie może korzystać z tej zalety w danym starciu, chyba że wyda 2 PK. Dodatkowo Koncentracja postaci wzrasta na stałe o 5 pkt."
)
character_class.virtues.create(
  name: "Runiczne Tatuaże",
  description: "Weteran, dzięki pokrywającym jego ciało mistycznym tatuażom, zwiększa na stałe swoją Entropię i Wytrzymałość o  1 pkt; ponadto jego Odporność na Hekseri wzrasta o 5 pkt."
)
