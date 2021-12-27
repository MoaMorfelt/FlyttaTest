//
//  FlyttaInfo.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-18.
//

import Foundation

class FlyttaInfo : Identifiable {
    
    
    
    var flyttinfo = [FlyttItem]()
    
    init() {
        
        // 1.EKONOMI
        var kategori1 = FlyttItem()
        kategori1.flyttname = "Ekonomi"
        kategori1.flyttimage = "ekonomi"
        
        kategori1.subkategorier = [FlyttItem]()
        
        // 1.3EKONOMI - KONTANTINSATS
        var kategori1_3 = FlyttItem()
        kategori1_3.flyttname = "Kontantinsats"
        kategori1_3.flyttimage = "kontantinsats"
        kategori1_3.flytttext = """
        När du ska köpa en bostad behöver du troligtvis ett bolån. Bolånet är på max 85% av vad bostaden är värderad till, eller det belopp du ska köpa bostaden för. Återstående del av bostaden är de 15% som du själv måste betala. Denna procent kallas för kontantinsats.
        
        Du kan betala mer än 15% men inte mindre. Vanligtvis kommer dessa 15% från sparade pengar eller vinst från en tidigare försäljning av bostad. Ifall du inte har pengarna till de 15% kan du ta ett privatlån som inte har bostaden som säkerhet. Dock är räntan oftast högre och återbetalningstiden är kortare på ett privatlån än ett bolån. Därför är det väldigt viktigt att se till innan man tar ett privatlån att man har råd att betala alla kostnader.
        
        I appen kan du räkna ut hur mycket pengar du behöver i kontantinsats.
        """
        
        kategori1.subkategorier?.append(kategori1_3)
        
        // 1.4EKONOMI - LÅN
        var kategori1_4 = FlyttItem()
        kategori1_4.flyttname = "Lån"
        kategori1_4.flyttimage = "lan"
        kategori1_4.flytttext = """
        Om du behöver köpa något som du inte har råd att betala direkt kan du ta ett lån. Viktigt att tänka på är att det kostar att låna pengar genom avgifter och räntor. Har du råd att betala tillbaka den summa du lånat plus de övriga summorna som tillkommer?
        
        För många är det nödvändigt med ett lån när de ska köpa en bostad. Har du för många andra lån påverkar det din kreditvärdighet, vilket kan göra att möjligheten för dig att få ett bolån eller något annat lån i framtiden minskar. Innan du ansöker om ett lån kontrollera hur hög räntan är.
        """
        
        kategori1.subkategorier?.append(kategori1_4)
        
        // 1.1EKONOMI - ELRÄKNING
        var kategori1_1 = FlyttItem()
        kategori1_1.flyttname = "Elräkning"
        kategori1_1.flyttimage = "elrakning"
        kategori1_1.flytttext = """
Varje månad får du en räkning med din elförbrukning. För en lägenhet brukar kostnaden vara cirka 490 kr, vilket motsvarar ungefär 2 500 kWh/år exklusive värme. Detta kan självklart variera beroende på hur mycket el som förbrukas och elpriset. Om du undrar vilka energitjuvar du har i ditt hem som ökar energiförbrukningen, kan du kontakta din elleverantör för att få en rådgivning. Du kan även logga in på elleverantörens hemsida för att se din energiförbrukning.

**kWh** = Kilowattimme, enheten man mäter energiförbrukningen i.
**MWh** = Megawattimme, enheten man läser av en fjärrvärmemätare (1 MWh = 1 000 kWh)
"""
        
        kategori1.subkategorier?.append(kategori1_1)

        // 1.2EKONOMI - FÖRSÄKRING
        var kategori1_2 = FlyttItem()
        kategori1_2.flyttname = "Försäkring"
        kategori1_2.flyttimage = "forsakring"
        kategori1_2.flytttext = """
Det finns olika typer av försäkringar både allmänna och privata. Allmänna försäkringar kan vara till exempel sjukpenning och föräldrapenning. Privata försäkringar väljer man själv, vilka man vill ha och från vilket försäkringsbolag.

**Hemförsäkring:** En hemförsäkring innefattar dina tillhörigheter i ditt hem. Hemförsäkringen innehåller fyra andra försäkringar (ansvarsförsäkring, rättskydd, överfallsskydd och reseförsäkring). Viktigt att du väljer rätt försäkringsbelopp så att du inte blir underförsäkrad. Du behöver även stämma av att försäkringsavtalet omfattar alla som är skrivna på samma adress.

**Bostadsrättstillägg:** Om du bor i en bostadsrätt är det bra att teckna en försäkring som täcker eventuella skador på bostaden, om inte din förening täcker detta. Ifall du köpt en bostadsrätt behöver du ett tillägg till din hemförsäkring om inte bostadsrättsföreningen har tecknat det.

**Bilförsäkring:** Om du äger en bil måste du enligt lag ha en trafikförsäkring, om inte bilen är avställd. Oftast behöver man komplettera sin trafikförsäkring med en halv- eller helförsäkring. Ifall du inte tecknar en halv- eller helförsäkring finns det risk att du blir utan ersättning om din bil skadas. Vid köp av ny bil ingår oftast vagnskadegaranti i tre år och då räcker det att du har en halvförsäkring under den perioden.

**Produktförsäkring:** När du köpt en produkt kan du bli erbjuden en särskild försäkring för produkten. Viktigt att tänka på innan du skaffar en produktförsäkring är, att kontrollera vilket skydd du har via din hemförsäkring eller möjligheten att utöka den med ett allrisktillägg. Ytterligare en sak att tänka på är att du ofta får garanti på produkten samt att konsumentköplagen skyddar för ursprungliga fel om du reklamerar varan inom tre år.
"""
        
        kategori1.subkategorier?.append(kategori1_2)
        

        // 2.FLYTT
        var kategori2 = FlyttItem()
        kategori2.flyttname = "Flytt"
        kategori2.flyttimage = "Flytt"
        
        kategori2.subkategorier = [FlyttItem]()
        
        // 2.1FLYTT - Att göra
        var kategori2_1 = FlyttItem()
        kategori2_1.flyttname = "Checklista"
        kategori2_1.flyttimage = "checklista"
        kategori2_1.flytttext = """
Innan du flyttar kan det vara bra att göra en checklista för att ha koll på vad du behöver göra inför flytten. I appen hittar du en färdig checklista med generella saker som behövs göras. Bocka av det du har gjort och håll koll på vad du har kvar att göra.
"""
        
        kategori2.subkategorier?.append(kategori2_1)
        
        // 2.2FLYTT - Rensa
        var kategori2_5 = FlyttItem()
        kategori2_5.flyttname = "Rensa"
        kategori2_5.flyttimage = "rensa"
        kategori2_5.flytttext = """
Innan du ska flytta är det bra att rensa. Ställ dig alltid frågan ”Behöver jag verkligen denna saken?” Oftare än du tror kommer svaret vara nej.

Börja med att rensa bland dina kläder. Börja sortera dina kläder i olika högar. En hög med kläder du vill ha kvar, en hög som du är osäker på, en hög med kläder du vill sälja och som du vill skänka bort. Det samma gäller för dina skor.

Inredning kan även det vara bra att rensa igenom innan. Du kanske har bytt stil eller tröttnat på vissa saker. Slutligen papper och dokument. Släng allt som du inte behöver, organisera viktiga papper och dokument i pärmar och plastfickor. Samla allt det viktiga på ett och samma ställe.
"""
        
        kategori2.subkategorier?.append(kategori2_5)
        
        // 2.2FLYTT - Packa
        var kategori2_2 = FlyttItem()
        kategori2_2.flyttname = "Packa"
        kategori2_2.flyttimage = "packa"
        kategori2_2.flytttext = """
För att kunna påbörja din packning inför flytten behöver du något att packa i. Det finns många butiker som säljer flyttkartonger. Du kan alltid fråga om det är någon som vill låna ut eller skänka flyttkartonger till dig. För att skydda dina ömtåliga saker i flytten, är det bra att ha förpackningsmaterial. Det kan bli en onödig utgift, ett tips är att använda sig av handdukar, lakan, filtar, tidningspapper osv. Lägg inte något ömtåligt oskyddat, då är det bättre att du ser till det blir omslutet av något så det inte går sönder. Innan du börjar packa kan det även vara bra att rensa. Sälj eller skänk bort saker som du inte är i behov av längre. Så slipper du ta med det till ditt nya hem.

Strukturera upp packningen genom att dela upp den utifrån bostadens rum. Packa ner det som du minst kommer behöva i botten på flyttlådan.
Böcker och tidningar kan packas ner i resväskor, annars i halva flyttkartonger så det inte blir för tungt. Mattor går att rulla och tejpa ihop. Lägg prydnadsföremål i skyddspapper eller i originalförpackningen. Skruva ner taklampor och lägg ner i flyttkartonger. Mindre lampor kan lampskärmarna tas av och läggas i plastpåsar. Större möbler som byrålådor, skåp osv kan vara bra att omsluta med täckplast. Tänka på att luckor eller lådor inte öppnas när det bärs, låt inget ligga kvar i lådorna. Tavlor behöv bli omsluta med något typ av skydd. Krukväxter kan stå i öppna flyttkartonger, placera en plastpåse runt. Tv:n kan du lägga i originalförpackning om du har kvar den, annars går det att vira runt en filt om. Lägg laddar för olika elektronikprodukter i varsin påse som du märker med exempelvis TV, dator, playstation osv.

När det gäller **sovrummet** och garderober kan du packa ner lakan, handdukar och kläder, som du inte behöver innan flytten. Kläder kan du packa i flyttlådor eller låta dom hänga kvar på sina galgar och ta en sopsäck över, eller packa ner dem i resväskor. Omslut speglar med wellpapp eller bubbelplast och tejpa runt. Madrassen går att rulla ihop och omslutas med tejp. Ta en sopsäck runt madrassen då blir den inte smutsig. Skruva sedan loss sängram och ben då tar de mindre plats i flyttbilen.

**Köket** kan du delvis packa ner, ofta behöver man en del saker för att kunna laga mat, tiden innan flytten. Placera tallrikar vertikalt, med papper emellan, istället för på varandra då står de säkrare. Glas kan packas ner stående med papper om. Packa bestick i en handduk, se till så att vassa knivar är rullade i bubbelplast eller tidningspapper.

Strax innan du flyttar kan du börja packa ner **badrummet**. Alla produkter som kan läcka läggs i plastpåsar eller med plastfolie om. Se till så att mediciner och läkemedel finns tillgängligt fram till flyttdagen.

Märk kartongerna med vilket rum de ska till då blir det enklare när du ska packa upp. Packa inte för tungt. Glöm inte att packa din egen väska med nycklar, mediciner, viktiga papper. Märk kartongerna med belysningen i så slipper du leta efter lampor i ett mörkt nytt hem.

Vill du inte packa själv eller inte har tid finns det flyttfirmor som erbjuder den servicen.

"""
        
        kategori2.subkategorier?.append(kategori2_2)
        
        
        // 2.3FLYTT - Flyttfirma
        var kategori2_3 = FlyttItem()
        kategori2_3.flyttname = "Flyttbil"
        kategori2_3.flyttimage = "flyttbil"
        kategori2_3.flytttext = """
Det finna många firmor som hyr ut flyttbilar. Bensinstationer brukar erbjuda olika typer av lastbilar som du får köra med B körkort eller släp. Boka flyttbilen i god tid. Tänk på att ta försäkring under perioden du lånar lastbilen/släpet så att du inte behöver stå för kostnaden om något skulle händer med lastbilen/släpet.
"""
        
        kategori2.subkategorier?.append(kategori2_3)
        
        // 2.3FLYTT - Flyttfirma
        var kategori2_4 = FlyttItem()
        kategori2_4.flyttname = "Flyttstäd"
        kategori2_4.flyttimage = "Fstad"
        kategori2_4.flytttext = """
När du väl har flyttat, se till att ha full koll på vad som behövs städas om du själv ska utföra flyttstädningen. Det finns många firmor som erbjuder flyttstädning. De vet vad som krävs och anpassar sina tjänster så både du och nästa hyresgäst som ska flytta in samt ägaren nöjd med resultatet.
"""
        kategori2.subkategorier?.append(kategori2_4)

        
        // 3.Larm
        var kategori3 = FlyttItem()
        kategori3.flyttname = "Larm"
        kategori3.flyttimage = "larm"
        
        kategori3.subkategorier = [FlyttItem]()
        
        // 3.1 Larm - Brandlarm
        var kategori3_1 = FlyttItem()
        kategori3_1.flyttname = "Bandlarm"
        kategori3_1.flyttimage = "brandlarm"
        kategori3_1.flytttext = """
Om brandlarmet går ska du först rädda dig själv och andra. Därefter varnar du andra och sedan ringer du 112. Om du inte utsätter dig själv för fara kan du börja släcka elden.

Se till att ha brandsläckare och brandfilt hemma och tillgängligt. Det finns inte alltid brandvarnare i alla lägenheter. Köp en brandvarnare innan du flyttar in i din lägenhet.
"""
        
        kategori3.subkategorier?.append(kategori3_1)
        
        // 4Tvätt
        var kategori4 = FlyttItem()
        kategori4.flyttname = "Tvätt"
        kategori4.flyttimage = "Tvatt"
        
        kategori4.subkategorier = [FlyttItem]()
        
        // 4.1Tvätt - Symboler
        var kategori4_1 = FlyttItem()
        kategori4_1.flyttname = "Symboler"
        kategori4_1.flyttimage = "symboler"
        kategori4_1.flytttext = ""
        kategori4_1.infoimage = "tvattsymboler"
        
        kategori4.subkategorier?.append(kategori4_1)
        
        
        // 4.3Tvätt - Tvättmaskin
        var kategori4_3 = FlyttItem()
        kategori4_3.flyttname = "Tvättmaskin"
        kategori4_3.flyttimage = "tvattmaskin"
        kategori4_3.flytttext = """
Innan du börjar tvätta bör du kolla hur plagget ska tvättas. Titta på symbolerna som finns på tvättlappen i plagget. Läs under symboler vad de olika symbolerna betyder.
"""
        
        kategori4.subkategorier?.append(kategori4_3)
        
        //5.1 Städning - Fläckar
        var kategori4_9 = FlyttItem()
        kategori4_9.flyttname = "Fläckar"
        kategori4_9.flyttimage = "flack"
        kategori4_9.flytttext = """
        Här kommer en generell rådgivning när det gäller fläckar. Det är viktigt att vara snabb så att inte fläcken hinner fästa sig och gro in.
        
        **Blod:** Blanda 1dl vatten och 1 msk salt, blötlägg och skölj i kallt vatten. Är fläcken intorkad på material så som bomull eller linne använder du ammoniak istället och därefter såpa. Är det ett färgat tyg så kan du blanda kallt vatten och citron.
        
        **Bläck:** Om fläcken är vattenlöslig så blanda tvål och mycket vatten. Är det inte vattenlöslig löser du först upp fläcken med T-sprit och sedan med tvållösning och vatten. Det är viktigt att du sköljer noga.
        
        **Bär:** Använd dig av vinäger, kokande vatten eller filmjölk. Lägg försiktigt på vinäger och använd kokande vatten om tyget klarar det. Är bärfläcken intorkad så använd filmjölk och låt verka över natten.

        **Choklad:** Choklad är något av de svåraste att få bort men går att lösa genom att fukta fläcken med bensin. Efter det ska fläcken bestrykas i glycerin och sköljas av. Ett annat husmorstips är att gnida in fläcken i mjölk eller såpa innan du lägger in det i tvättmaskinen. Annars går det även att använda färglös alkohol eller ammoniak.
        
        **Deodorant:** Om du har fått gula fläckar på ett plagg av deodorant kan du blanda diskmedel och citronsyrepulver. Därefter stryker du blandningen över fläcken och väntar ett tag innan du sedan sköljer av den med vatten.
        
        **Fett:** För att få bort fett fläckar behöver du låta potatismjöl absorbera fettet under flera timmar. Därefter borstar du av mjölet och tvättar med vatten och tvål. Ett annat alternativ är att blötlägga tyget i hetvatten, ammoniaklösning och tvättmedel.
        
        **Ketchup:** Gnugga försiktigt bort ketchup fläcken med diskmedel och varmt vatten. Om fläcken har grott in sig kan du använda T-sprit.
        
        **Läppstift/mascara:** För att få bort en fläck av läppstift eller mascara börjar du med att använda flytande tvättmedel och sedan tvättar du tyget som vanligt. Skulle fläcken verka svår att få bort kan du istället använda lacknafta som förbehandling. Andra alternativ är vaselin eller att gnida torrt vitt bröd på fläcken.
        
        **Rödvin:** På en färsk rödvinsfläck kan du använda kolsyrat bubbelvatten eller kallt vatten. Om fläcken har torkat in kan du använda het mjölk.
        
        **Svett:** Du får bort svettfläckar genom att lägg fläcken i ättiklösning i ungefär 15 minuter.
        
        **Tomatsås:** Dessa fläckar får du bort genom att skölj av tyget och låt sedan tyget ligga i glycerin i en timme. Därefter kan du tvätta tyget i tvålvatten.
        
        **Tuggummi:** Tuggummi kan kännas som något svårt att få bort. Börjar med att lägg isbitar direkt på tuggummifläcken. Lägg sedan in plagget i frysen och bryt bort tuggummit.
        """
        
        kategori4.subkategorier?.append(kategori4_9)
        
        // 4.4Tvätt - Torktumlare
        var kategori4_4 = FlyttItem()
        kategori4_4.flyttname = "Torktumlare"
        kategori4_4.flyttimage = "torktumlare"
        kategori4_4.flytttext = """
Innan du börjar torktumla bör du se efter om plagget går att torktumla. Titta på symbolerna som finns på tvättlappen i plagget. Läs under symboler vad de olika symbolerna betyder.
"""
        kategori4.subkategorier?.append(kategori4_4)
        
        // 4.5Tvätt - Torkskåp
        var kategori4_5 = FlyttItem()
        kategori4_5.flyttname = "Torkskåp"
        kategori4_5.flyttimage = "torkskap"
        kategori4_5.flytttext = """
Ett torkskåp kan vara ett smidigt och snabbt sätt att torka dina kläder på. Häng upp kläderna i skåpet och sätt sedan igång det. Torkskåpen har oftast olika symboler beroende på vilken modell och från vilket märke. Exempelvis kan det finnas en sol, en fjäril och en on/off knapp. På ett sådant torkskåp betyder solen att det blir torrt och med fjärilen blir det mindre torrt, nästan lite svalt och fuktigt.
"""
        
        kategori4.subkategorier?.append(kategori4_5)
        
        // 4.6Tvätt - Mangelmaskin
        var kategori4_6 = FlyttItem()
        kategori4_6.flyttname = "Mangel"
        kategori4_6.flyttimage = "mangla"
        kategori4_6.flytttext = """
I flerfamiljshus kan det finnas mangel i tvättstugan. I denna maskin lägger du in lakan, handdukar som du vill ha släta. Efter att maskinen har pressat tyget hårt, stoppar du maskinen och tar sedan ut exempelvis lakanet. Lakanet kommer vara rakt och slätt när det blivit färdig manglat. Tänk på att du måste vika lakan, handdukar osv till den storlek som får plats i maskinen. Alla maskiner är olika och fungerar på olika sätt. Det viktigaste är att du aldrig stoppar in fingrarna i maskinen då kan nu klämma dig illa.
"""
        
        kategori4.subkategorier?.append(kategori4_6)
        
        // 4.7Tvätt - Strykjärn
        var kategori4_7 = FlyttItem()
        kategori4_7.flyttname = "Strykjärn"
        kategori4_7.flyttimage = "strykjarn"
        kategori4_7.flytttext = """
Innan du börjar stryka bör du se efter i vilket gradantal plagget ska strykas i. Titta på symbolerna som finns på tvättlappen i plagget. Läs under symboler vad de olika symbolerna betyder.
"""
        
        kategori4.subkategorier?.append(kategori4_7)
        
        // 4.8Tvätt - Steamer
        var kategori4_8 = FlyttItem()
        kategori4_8.flyttname = "Steamer"
        kategori4_8.flyttimage = "steamer"
        kategori4_8.flytttext = """
Med hjälp av en steamer kan du snabbt och enkelt få bort veck på kläderna. Steamerna har en kraftig ånga och tränger sig in i textilfibrerna och ger ett fint resultat direkt. Att använda en streamer kan vara ett smidigare alternativ jämfört med ett strykjärn.
"""
        
        kategori4.subkategorier?.append(kategori4_8)
        
        
        // 4.10Tvätt - Rengöring av tvättmaskin
        var kategori4_10 = FlyttItem()
        kategori4_10.flyttname = "Rengöring"
        kategori4_10.flyttimage = "tvatta"
        kategori4_10.flytttext = """
När du tvättar blir dina kläder rena men tvättmaskinen behövs också göras rent ibland. Ett husmorsknep är att blanda ättika och bikarbonat för att rengöra tvättmaskinen. Ta ett par matskedar av bikarbonaten och lika mycket vatten och häll i tvättmedelsfacket. Häll sedan ett par deciliter ättika i trumman (trumman = där du lägger i kläderna) på tvättmaskinen. Sätt sedan igång tvättmaskinen på ett program med hög värme.

Ett annat alternativ kan vara att lägga in en disktablett i trumman och sätt sedan igång ett program på 90 grader.
"""
        
        kategori4.subkategorier?.append(kategori4_10)
        

        // 5 Städning
        var kategori5 = FlyttItem()
        kategori5.flyttname = "Städning"
        kategori5.flyttimage = "Stadning"
        
        kategori5.subkategorier = [FlyttItem]()
        
        
        //5.2 Städning - Smuts
        var kategori5_2 = FlyttItem()
        kategori5_2.flyttname = "Smuts"
        kategori5_2.flyttimage = "tort"
        kategori5_2.flytttext =
"""
För att slippa mögel, silverfiskar, tvålskumsavlagningar, bakterier och annat i badrummet är det viktigt att du håller badrummet torrt. Se till att hålla badrumsdörren öppen så att badrummet alltid vädras. Efter du har duschat/badat är det viktigt att du torkar torrt blöta/fuktiga ytor.
"""
        
        kategori5.subkategorier?.append(kategori5_2)
        
        //5.3 Städning - under timmen
        var kategori5_3 = FlyttItem()
        kategori5_3.flyttname = "Under timmen"
        kategori5_3.flyttimage = "timme"
        kategori5_3.flytttext = """
    Om städning är något som du ogillar kommer här ett tips på hur du städar hela ditt hem på enbart en timme. Detta är beräknat för ett hem med 3 sovrum och två badrum. Ett hem med färre rum kommer minska städtiden.

    Lägg 6 minuter på **sovrum** genom att bädda sängen, damma av möbler och rensa bort saker som inte ska vara i sovrummet. Alternativt kan du lägga dessa saker åt sidan i en korg eller kasse och rensa igenom efteråt.

    **Badrum** kan du lägga 7 minuter på och du börjar du med att plocka undan saker och lägg på sin plats. Häll/spraya rengöringsmedel i toaletten och låt verka. Undertiden torkar du av vask och bänkytor med rengöringsmedel. Spraya av speglar och slutligen rengör du toaletten.
    
    När du kommer till **vardagsrummet** har du 8 minuter att lägga. Rensa bort sakerna som inte ska vara i vardagsrummet och lägg i en korg eller kasse som du rensar efteråt. Damma av saker och ting från det ena hörnet till det andra av rummet. Vik filtar rätt och puffa till kuddar.

    **Köket** kommer kräva lite mer städning du kan lägga 12 minuter på det. Om det finns ren disk i diskmaskinen, plockar du ur den och sen ställer ner den smutsiga disken. Har du ingen diskmaskin kommer det troligen ta lite längre tid, börja med att tvätta rent den smutsiga disken och torka sedan rent den. Torka av alla ytor och använd dig av städmedel på spis osv. Torka av köksapparater så som kaffebryggare, vattenkokare och annat som står framme. Avluta med att torka av köksbordet.

    Avslutningsvis har du 15 minuter att lägga på att dammsuga alla golv i hemmet samt tvätta golven i kök och badrum. Ett tips när du dammsuger är att arbeta dig baklänges ut ur rummet. Ta av munstycke för att komma åt hörn. Glöm inte att köra dammsugaren under möbler så som säng och soffa.
    """
        
        kategori5.subkategorier?.append(kategori5_3)
        
        // 6 Matlagning
        var kategori6 = FlyttItem()
        kategori6.flyttname = "Matlagning"
        kategori6.flyttimage = "Matlagning"
        
        kategori6.subkategorier = [FlyttItem]()
        
        // 6.1 Matlagning - MÅTT
        var kategori6_1 = FlyttItem()
        kategori6_1.flyttname = "Mått"
        kategori6_1.flyttimage = "matt"
        kategori6_1.flytttext = """
    **1 l (liter)** = 1000 ml = 10 dl
    **1 dl (deciliter)** = 100 ml = knappt 7 msk
    **1 msk (matsked)** = 15 ml = 3 tsk
    **1 tsk (tesked)** = 5 ml = 5 krm
    **1 krm (kryddmått)** = 1 ml
    """
        kategori6.subkategorier?.append(kategori6_1)
        
        // 6.2 Matlagning - KOKTID
        var kategori6_2 = FlyttItem()
        kategori6_2.flyttname = "Koktid"
        kategori6_2.flyttimage = "koka"
        kategori6_2.flytttext = """
    **Broccoli, hel** = 7- 10
    **Broccoli, buketter** = 3
    **Bönor** = 3-5
    **Majskolvar** = 5-10
    **Morötter, bitar** = 3-5
    **Potatis** = 20-25
    **Purjolök, bitar** = 1-3
    **Rödbetor, späda** = 15-20
    **Sparris, grön** = 5-10
    **Spenat** = 1
    **Ägg, löskokt (kokas upp i kallt vatten)** = 2-3
    **Ägg, löskokt (läggs i kokande vatten)** = 4-5
    **Ägg, krämig gula (kokas upp i kallt vatten)** = 5-6
    **Ägg, krämig gula (läggs i kokande vatten)** = 8-9
    **Ägg, hårdkokt (kokas upp i kallt vatten)** = 8-9
    **Ägg, hårdkokt (läggs i kokande vatten)** = 10-11

    Se koktid för exempelvis pasta och ris på förpackning.
    """
        
        kategori6.subkategorier?.append(kategori6_2)
        
        // 7 Källsortering
        var kategori7 = FlyttItem()
        kategori7.flyttname = "Källsortering"
        kategori7.flyttimage = "Kallsortering"
        
        kategori7.subkategorier = [FlyttItem]()
        
        //7.1 Källsortering - Sortera
        var kategori7_1 = FlyttItem()
        kategori7_1.flyttname = "Sortera"
        kategori7_1.flyttimage = "sortera"
        kategori7_1.flytttext = """
    Källsortera är viktigt för miljön och lagstadgat i Sverige. Genom att sorterar bidrar vi till att återvinningen blir lättare, på så sätt sparar vi på jordens resurser. När du sorterar är det viktigt att du lägger produkten rätt. Om du inte vet hur du ska sortera, börja med att läsa på förpackningen. Under kategorin **Guide** hittar du även ett smidigt sätt på hur du söker fram vart varje produkt ska sorteras. Se till att förpackningen är tomma och eventuellt fria från matrester.
    """
        
        kategori7.subkategorier?.append(kategori7_1)
        
        //7.2 Källsortering - Guide
        var kategori7_2 = FlyttItem()
        kategori7_2.flyttname = "Guide"
        kategori7_2.flyttimage = "guide"
        kategori7_2.flytttext = """
    Det kan vara svårt att veta vart allt ska kastas och hur det ska sorteras. På www.ftiab.se kan du skriva in en produkt i sorteringsguiden och få upp vart den ska kastas.
    """
        
        kategori7.subkategorier?.append(kategori7_2)
        
        //7.3 Källsortering - Kluringar
        var kategori7_3 = FlyttItem()
        kategori7_3.flyttname = "Kluringar"
        kategori7_3.flyttimage = "kluringar"
        kategori7_3.flytttext = """
    Många saker som behövs kasta kan vara svåra att veta hur de ska sorteras. Titta på förpackningen om du känner dig osäker, där står det oftast hur den ska sorteras. Här kommer några kluringar.

    **Blomkrukor, krukväxter och jord** = Innerkruka i plats går att återanvända men om den är trasig ska den slängas i restavfall. Krukor som är gjorda av keramik, porslin, lera eller terrakotta kan lämnas in på återbruket. Har du en trasig kruka kan den slängas i restavfall.

    **Chipspåse** = Om påsen går att skrynkla ihop och vecklar ut sig själv, slängs den i plast. Chips som säljs i rör har ofta ett plastlock som ska sorteras i plastförpackningar och röret till chipsen hamnar i pappersförpackningar.

    **Dricksglas** = Dessa slängs i restavfall då de är av en annan kvalitet är förpackningsglas. Tänk på att trasigt porslin slängs i restavfallet medan hela saker kan du lämna in till återbruk.

    **Fruktnät** = Viss frukt säljs i nät och detta ska sorteras som förpackning av plast.

    **Ljuskällor** = Lysrör och smålampor räknas som elektronikavfall. Detta kan lämnas in på återvinningscentralen eller i kärl för småelektronik som finns i flerfamiljshus.

    **Kuvert** = Kuvert ska slängas i restavfall och lika så gäller det post it-lappar

    **Mjölkförpackning** = Efter att du druckit upp mjölken ska du slänga förpackningen bland pappersförpackningar.

    **Pappersbärkasse** = ska kastas bland förpackningar av papper.

    **Presentpapper och snöre** = Du sorterar presentpapperet och slänger du bland förpackningar av papper och snöret i restavfallet.

    **Smink**= Produkter så som parfym, nagellack, hårspray, deo, läppstift osv innehåller farliga ämnen. Finns det innehåll kvar i förpackningen ska du lämna det som farligt avfall i en miljöbod eller på återvinningscentralen. Annars om förpackningen är tom sorterar du burken/flaskan där den hör hemma.

    **Tandborste** = En vanlig tandborste som inte går på el är troligen mest gjord av plast men när det börjar spreta sig ska den slängas i restavfallet. Lika så gäller det de tandborstar som är gjorda av bambu, de ska också kastat i restavfall. Tandkrämstuben ska dock slängas bland plast.
    """
        
        kategori7.subkategorier?.append(kategori7_3)
  
        
        // 9 Badrum
        var kategori9 = FlyttItem()
        kategori9.flyttname = "Badrum"
        kategori9.flyttimage = "Badrum"
        
        kategori9.subkategorier = [FlyttItem]()
        
        //9.1 Badrum - Avlopp
        var kategori9_1 = FlyttItem()
        kategori9_1.flyttname = "Avlopp"
        kategori9_1.flyttimage = "avlopp"
        kategori9_1.flytttext = """
        Om du har fått stopp i avloppet till duschen beror det på ett stopp i golvbrunnen. Detsamma gäller även golvbrunnen nedanför om du har ett badkar. För att rengöra detta och lösa upp stoppet börjar du med lyfta upp silen rensa bort allt hår och annan smuts. Torka silen ordentligt, då slipper du dålig lukt. Är det ett ordentligt stopp behöver du använda propplösningsmedel i kombination med ett rensband. Häll i propplösningsmedlet och låt det verka så länge som det står på flaskan. Se till att aldrig låta medlet verka längre, då det kan fräta sönder rören. När medlet har verkat spolar du rent med varmt vatten. Om stoppet inte upphört kan du använda dig av rensband för att få bort smutsen som skapat stoppet. Rensband går att köpa på de flesta byggvaruhus. Se till att använda skyddshandskar under processen gång då propplösningsmedlet kan skada din hud.

        Ett husmorstips för att få bort stopp i avloppet är att blanda ett par matskedar med bakpulver i en kopp fylld med vinäger. Håll ner blandningen i avloppet och häll sedan på kokande vatten rakt ner i avloppet.
        """
        
        kategori9.subkategorier?.append(kategori9_1)
        
        //9.2 Badrum - Duschvägg
        var kategori9_2 = FlyttItem()
        kategori9_2.flyttname = "Duschvägg"
        kategori9_2.flyttimage = "dusch"
        kategori9_2.flytttext = """
    På duschväggarnas fastnar kalk, använda gummiskrapan längst glaset uppifrån och ner efter varje dusch. Det förhindrar att kalk fastnar på väggarna. Om du inte får bort det med gummiskrapan, kan du göra en blandning av ättika eller vinäger och diskmedel. Börja med att värma upp ättikan/vinägern så att den blir varm men inte så varm att du bränner dig. Blanda sedan upp ättikan/vinägern med lika mycket diskmedel och häll blandningen i en sprayflaska och skaka runt försiktig så att det inte bildas skum. Spraya blandningen på väggarna och använd en svamp som inte ger repor på materialet och gnugga. Låt det sedan verka i 30 minuter innan du spolar av med kallt vatten.
    """
        
        kategori9.subkategorier?.append(kategori9_2)
        
        // 10 Bil
        var kategori10 = FlyttItem()
        kategori10.flyttname = "Bil"
        kategori10.flyttimage = "Bil"
        
        kategori10.subkategorier = [FlyttItem]()
        
        //10.1 Bil - Symboler
        var kategori10_1 = FlyttItem()
        kategori10_1.flyttname = "Symboler"
        kategori10_1.flyttimage = "bilsym"
        kategori10_1.flytttext = """
    Det finns många olika typer av varningslampor som kan lysa i bilen. Varningslamporna ska man inte vara rädd för utan det är bilen som kommunicerar till dig om något är fel. Nedan ser du vad symbolerna betyder.
    """
        kategori10_1.infoimage = "bilsymboler"
        
        kategori10.subkategorier?.append(kategori10_1)
                
        //10.1 Bil - Spolarvätska
        var kategori10_2 = FlyttItem()
        kategori10_2.flyttname = "Spolarvätska"
        kategori10_2.flyttimage = "spolarv"
        kategori10_2.flytttext = """
    Det är viktigt att tänka på vilken spolarvätska du ska ha i bilen. Detta eftersom det finns olika typer av spolarvätska utifrån vilken temperatur det är. I spolarvätskan finns det olika tillsatser som är avsatta för sommar eller vinter. Den spolarvätskan som är gjord för vintern innehåller alkohol som skyddar spolsystemet och gör så att vätskan inte fryser vid låga temperaturer. Det finns även rengöringsmedel i spolarvätskan som löser upp damm och smuts på rutorna. Spolarvätskan som är gjord för sommaren har ingen alkohol i sig med den kan innehålla tillsatser som till exempel tar bort insekter.
    """
        
        kategori10.subkategorier?.append(kategori10_2)
        
        //10.1 Bil - olja
        var kategori10_3 = FlyttItem()
        kategori10_3.flyttname = "Olja"
        kategori10_3.flyttimage = "olja"
        kategori10_3.flytttext = """
    Olja till bilen även kallat motorolja används till att smörja motorn. Tänk på att det är olika oljor till olika bilar. Genom en oljeguide kan du hitta vilken olja ditt fordon behöver. Skriv in ditt registreringsnummer i guiden och hitta din olja. Klicka här för att komma till en oljeguide: https://www.okq8.se/foretag/oljeguiden 
    """
        
        kategori10.subkategorier?.append(kategori10_3)
        
        

        
        // 11 Övrig info
        var kategori11 = FlyttItem()
        kategori11.flyttname = "Övrig info"
        kategori11.flyttimage = "ovriginfo"
        
        kategori11.subkategorier = [FlyttItem]()
        
        
        //11.1 Övrig info - Elskåp
        var kategori11_2 = FlyttItem()
        kategori11_2.flyttname = "Elskåp"
        kategori11_2.flyttimage = "elskap"
        kategori11_2.flytttext = """
    I varje hem finns det ett elskåp där de olika säkringarna sitter. Om en säkring går ska du titta i elskåpet vilken av säkringarna som gått. Behöver du hjälp att byta en säkring så kan du kontakta hyresvärden eller fastighetsskötaren.
    """
        
        kategori11.subkategorier?.append(kategori11_2)
        
        //11.1 Övrig info - Verktyg
        var kategori11_3 = FlyttItem()
        kategori11_3.flyttname = "Verktyg"
        kategori11_3.flyttimage = "verktyg"
        kategori11_3.flytttext = """
    Du kan låna verktyg av familj eller vänner. Det går även bra att hyra verktyg på olika byggvaruhus eller andra butiker som säljer verktyg. Kolla upp butiken innan och se vad de erbjuder och vad det kostar.
    """
        kategori11.subkategorier?.append(kategori11_3)


        
        
        flyttinfo.append(kategori1)
        flyttinfo.append(kategori2)
        flyttinfo.append(kategori3)
        flyttinfo.append(kategori4)
        flyttinfo.append(kategori5)
        flyttinfo.append(kategori6)
        flyttinfo.append(kategori7)
        flyttinfo.append(kategori9)
        flyttinfo.append(kategori10)
        flyttinfo.append(kategori11)

    }
    
}

class FlyttItem : Identifiable {
    
    var id = UUID()
    
    var flyttname = ""
    var flyttimage = ""
    
    var flytttext : String = """
ABC TEST
"""
    
    var infoimage = ""
    
    var subkategorier : [FlyttItem]?
    
    
    
}

