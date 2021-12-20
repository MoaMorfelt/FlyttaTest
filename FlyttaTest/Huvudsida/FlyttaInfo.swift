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
        kategori1_3.infoimage = "torktumlare"
        kategori1_3.flytttext = """
        hej hopp
        This site contains user submitted content, comments and opinions and is
        informational purposes only. Apple disclaims any and all liability for the acts,
        omissions and conduct of any third parties in connection with or related to your use of
        the site. All postings and use of the content on this site are subject to the Apple
        Developer Forums Participation Agreement
        """
        
        kategori1.subkategorier?.append(kategori1_3)
        
        // 1.4EKONOMI - LÅN
        var kategori1_4 = FlyttItem()
        kategori1_4.flyttname = "Lån"
        kategori1_4.flyttimage = "lan"
        kategori1_4.flytttext = """
        Du kan låna pengar av banken
        Massa **feta** stålar
        Betala tillbaka
        """
        
        kategori1.subkategorier?.append(kategori1_4)
        
        // 1.1EKONOMI - ELRÄKNING
        var kategori1_1 = FlyttItem()
        kategori1_1.flyttname = "Elräkning"
        kategori1_1.flyttimage = "elrakning"
        kategori1_1.flytttext = """
Betala elräkning så **lyser** det.
Mera text.
"""
        
        kategori1.subkategorier?.append(kategori1_1)

        // 1.2EKONOMI - FÖRSÄKRING
        var kategori1_2 = FlyttItem()
        kategori1_2.flyttname = "Försäkring"
        kategori1_2.flyttimage = "forsakring"
        kategori1_2.flytttext = "Fixa innan det brinner"
        
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
        kategori2_1.flytttext = "Detta behöver du göra inför flytten"
        
        kategori2.subkategorier?.append(kategori2_1)
        
        // 2.2FLYTT - Packa
        var kategori2_2 = FlyttItem()
        kategori2_2.flyttname = "Packa"
        kategori2_2.flyttimage = "packa"
        kategori2_2.flytttext = "Såhär kan du packa smart"
        
        kategori2.subkategorier?.append(kategori2_2)
        
        // 2.2FLYTT - Rensa
        var kategori2_5 = FlyttItem()
        kategori2_5.flyttname = "Rensa"
        kategori2_5.flyttimage = "rensa"
        kategori2_5.flytttext = "Såhär rensar du"
        
        kategori2.subkategorier?.append(kategori2_5)
        
        // 2.3FLYTT - Flyttfirma
        var kategori2_3 = FlyttItem()
        kategori2_3.flyttname = "Flyttbil"
        kategori2_3.flyttimage = "flyttbil"
        kategori2_3.flytttext = "Lättare än att gå"
        
        kategori2.subkategorier?.append(kategori2_3)
        
        // 2.3FLYTT - Flyttfirma
        var kategori2_4 = FlyttItem()
        kategori2_4.flyttname = "Flyttstäd"
        kategori2_4.flyttimage = "Fstad"
        kategori2_4.flytttext = "Låt någon annan städa"
        
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
        kategori3_1.flytttext = "Detta behöver du göra när brandlarmet går"
        
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
        kategori4_1.flytttext = "tvätt symboler"
        
        kategori4.subkategorier?.append(kategori4_1)
        
        // 4.2Tvätt - Tvättmedel
        var kategori4_2 = FlyttItem()
        kategori4_2.flyttname = "Tvättmedel"
        kategori4_2.flyttimage = "tvattmedel"
        kategori4_2.flytttext = "Välj rätt tvättmedel"
        
        kategori4.subkategorier?.append(kategori4_2)
        
        // 4.3Tvätt - Tvättmaskin
        var kategori4_3 = FlyttItem()
        kategori4_3.flyttname = "Tvättmaskin"
        kategori4_3.flyttimage = "tvattmaskin"
        kategori4_3.flytttext = "Såhär använder du en tvättmaskin"
        
        kategori4.subkategorier?.append(kategori4_3)
        
        // 4.4Tvätt - Torktumlare
        var kategori4_4 = FlyttItem()
        kategori4_4.flyttname = "Torktumlare"
        kategori4_4.flyttimage = "torktumlare"
        kategori4_4.flytttext = "Såhär använder du en Torktumlare"
        
        kategori4.subkategorier?.append(kategori4_4)
        
        // 4.5Tvätt - Torkskåp
        var kategori4_5 = FlyttItem()
        kategori4_5.flyttname = "Torkskåp"
        kategori4_5.flyttimage = "torkskap"
        kategori4_5.flytttext = "Såhär använder du ett torkskåp"
        
        kategori4.subkategorier?.append(kategori4_5)
        
        // 4.6Tvätt - Mangelmaskin
        var kategori4_6 = FlyttItem()
        kategori4_6.flyttname = "Mangelmaskin"
        kategori4_6.flyttimage = "mangla"
        kategori4_6.flytttext = "Såhär använder du en mangelmaskin"
        
        kategori4.subkategorier?.append(kategori4_6)
        
        // 4.7Tvätt - Strykjärn
        var kategori4_7 = FlyttItem()
        kategori4_7.flyttname = "Strykjärn"
        kategori4_7.flyttimage = "strykjarn"
        kategori4_7.flytttext = "Såhär använder du ett strykhjärn"
        
        kategori4.subkategorier?.append(kategori4_7)
        
        // 4.8Tvätt - Steamer
        var kategori4_8 = FlyttItem()
        kategori4_8.flyttname = "Steamer"
        kategori4_8.flyttimage = "steamer"
        kategori4_8.flytttext = "Såhär använder du en steamer"
        
        kategori4.subkategorier?.append(kategori4_8)
        
        // 4.9Tvätt - Vikning
        var kategori4_9 = FlyttItem()
        kategori4_9.flyttname = "Vikning"
        kategori4_9.flyttimage = "vikning"
        kategori4_9.flytttext = "Såhär viker du dina kläder"
        
        kategori4.subkategorier?.append(kategori4_9)
        
        // 4.10Tvätt - Rengöring av tvättmaskin
        var kategori4_10 = FlyttItem()
        kategori4_10.flyttname = "Rengöring"
        kategori4_10.flyttimage = "tvatta"
        kategori4_10.flytttext = "Såhär rengör du en tvättmaskin"
        
        kategori4.subkategorier?.append(kategori4_10)
        

        // 5 Städning
        var kategori5 = FlyttItem()
        kategori5.flyttname = "Städning"
        kategori5.flyttimage = "Stadning"
        
        kategori5.subkategorier = [FlyttItem]()
        
        //5.1 Städning - Fläckar
        var kategori5_1 = FlyttItem()
        kategori5_1.flyttname = "Fläckar"
        kategori5_1.flyttimage = "flack"
        kategori5_1.flytttext = "Så får du bort fläckar"
        
        kategori5.subkategorier?.append(kategori5_1)
        
        //5.2 Städning - Smuts
        var kategori5_2 = FlyttItem()
        kategori5_2.flyttname = "Smuts"
        kategori5_2.flyttimage = "tort"
        kategori5_2.flytttext =
"""
Ett bra sätt att slippa mögel, silverfiskar, tvålskumsavlagringar,bakterier och annat är att hålla badrummet torrt. Stäng aldrig badrumsdörren utan låt det vädra ut, och torka alltid torrt efter dusch och bad.
"""
        
        kategori5.subkategorier?.append(kategori5_2)
        
        //5.3 Städning - under timmen
        var kategori5_3 = FlyttItem()
        kategori5_3.flyttname = "Under timmen"
        kategori5_3.flyttimage = "timme"
        kategori5_3.flytttext = "Så städar du hemme under timmen"
        
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
        kategori6_1.flytttext = "Använd dessa måtten"
        
        kategori6.subkategorier?.append(kategori6_1)
        
        // 6.2 Matlagning - KOKTID
        var kategori6_2 = FlyttItem()
        kategori6_2.flyttname = "Koktid"
        kategori6_2.flyttimage = "koka"
        kategori6_2.flytttext = "Använd dessa måtten"
        
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
        kategori7_1.flytttext = "Såhär sorterar du"
        
        kategori7.subkategorier?.append(kategori7_1)
        
        //7.2 Källsortering - Guide
        var kategori7_2 = FlyttItem()
        kategori7_2.flyttname = "Guide"
        kategori7_2.flyttimage = "guide"
        kategori7_2.flytttext = "Guide till vart allt ska ta vägen"
        
        kategori7.subkategorier?.append(kategori7_2)
        
        //7.3 Källsortering - Kluringar
        var kategori7_3 = FlyttItem()
        kategori7_3.flyttname = "Kluringar"
        kategori7_3.flyttimage = "kluringar"
        kategori7_3.flytttext = "Dessa brukar folk ofta kasta fel"
        
        kategori7.subkategorier?.append(kategori7_3)
        
        // 8 Kök
        var kategori8 = FlyttItem()
        kategori8.flyttname = "Kök"
        kategori8.flyttimage = "Kok"
        
        kategori8.subkategorier = [FlyttItem]()
        
        //8.1 Kök - Ugn
        var kategori8_1 = FlyttItem()
        kategori8_1.flyttname = "Ugn"
        kategori8_1.flyttimage = "ugn"
        kategori8_1.flytttext = "Detta betyder de olika symbolerna på ugnen "
        
        kategori8.subkategorier?.append(kategori8_1)
        
        //8.2 Kök - Spis
        var kategori8_2 = FlyttItem()
        kategori8_2.flyttname = "Spis"
        kategori8_2.flyttimage = "spis"
        kategori8_2.flytttext = "Detta betyder de olika symbolerna på spisen"
        
        kategori8.subkategorier?.append(kategori8_2)
        
        //8.3 Kök - Kylskåp
        var kategori8_3 = FlyttItem()
        kategori8_3.flyttname = "Kylskåp"
        kategori8_3.flyttimage = "kyl"
        kategori8_3.flytttext = "Såhär använder du ett kylskåp"
        
        kategori8.subkategorier?.append(kategori8_3)
        
        //8.4 Kök - Frys
        var kategori8_4 = FlyttItem()
        kategori8_4.flyttname = "Frys"
        kategori8_4.flyttimage = "frys"
        kategori8_4.flytttext = "Såhär använder du en frys"
        
        kategori8.subkategorier?.append(kategori8_4)
        
        //8.5 Kök - Städa
        var kategori8_5 = FlyttItem()
        kategori8_5.flyttname = "Städning"
        kategori8_5.flyttimage = "flack"
        kategori8_5.flytttext = "Såhär städar du ett kök"
        
        kategori8.subkategorier?.append(kategori8_5)
        
        // 9 Badrum
        var kategori9 = FlyttItem()
        kategori9.flyttname = "Badrum"
        kategori9.flyttimage = "Badrum"
        
        kategori9.subkategorier = [FlyttItem]()
        
        //9.1 Badrum - Avlopp
        var kategori9_1 = FlyttItem()
        kategori9_1.flyttname = "Avlopp"
        kategori9_1.flyttimage = "avlopp"
        kategori9_1.flytttext = "Såhär städar du ett avlopp"
        
        kategori9.subkategorier?.append(kategori9_1)
        
        //9.2 Badrum - Duschvägg
        var kategori9_2 = FlyttItem()
        kategori9_2.flyttname = "Duschvägg"
        kategori9_2.flyttimage = "dusch"
        kategori9_2.flytttext = "Såhär städar du en dusch"
        
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
        kategori10_1.flytttext = "Symboler i bilen"
        
        kategori10.subkategorier?.append(kategori10_1)
                
        //10.1 Bil - Spolarvätska
        var kategori10_2 = FlyttItem()
        kategori10_2.flyttname = "Spolarvätska"
        kategori10_2.flyttimage = "spolarv"
        kategori10_2.flytttext = "Spolarvätska användning"
        
        kategori10.subkategorier?.append(kategori10_2)
        
        //10.1 Bil - olja
        var kategori10_3 = FlyttItem()
        kategori10_3.flyttname = "Olja"
        kategori10_3.flyttimage = "olja"
        kategori10_3.flytttext = "Olja till bilen"
        
        kategori10.subkategorier?.append(kategori10_3)
        
        //10.1 Bil - Tanka
        var kategori10_4 = FlyttItem()
        kategori10_4.flyttname = "Tanka"
        kategori10_4.flyttimage = "tanka"
        kategori10_4.flytttext = "Tanka till bilen"
        
        kategori10.subkategorier?.append(kategori10_4)
        
        //10.1 Bil - Däck
        var kategori10_5 = FlyttItem()
        kategori10_5.flyttname = "Däck"
        kategori10_5.flyttimage = "dack"
        kategori10_5.flytttext = "Däck till bilen"
        
        kategori10.subkategorier?.append(kategori10_5)
        

        
        // 11 Övrig info
        var kategori11 = FlyttItem()
        kategori11.flyttname = "Övrig info"
        kategori11.flyttimage = "ovriginfo"
        
        kategori11.subkategorier = [FlyttItem]()
        
        //11.1 Övrig info - Fäckar
        var kategori11_1 = FlyttItem()
        kategori11_1.flyttname = "Fäckar"
        kategori11_1.flyttimage = "flack"
        kategori11_1.flytttext = "Såhär tar du bort fläckar"
        
        kategori11.subkategorier?.append(kategori11_1)
        
        //11.1 Övrig info - Elskåp
        var kategori11_2 = FlyttItem()
        kategori11_2.flyttname = "Elskåp"
        kategori11_2.flyttimage = "elskap"
        kategori11_2.flytttext = "Såhär använder du ett elskåp"
        
        kategori11.subkategorier?.append(kategori11_2)
        
        //11.1 Övrig info - Verktyg
        var kategori11_3 = FlyttItem()
        kategori11_3.flyttname = "Verktyg"
        kategori11_3.flyttimage = "verktyg"
        kategori11_3.flytttext = "Såhär använder du verktyg"
        
        kategori11.subkategorier?.append(kategori11_3)


        
        
        flyttinfo.append(kategori1)
        flyttinfo.append(kategori2)
        flyttinfo.append(kategori3)
        flyttinfo.append(kategori4)
        flyttinfo.append(kategori5)
        flyttinfo.append(kategori6)
        flyttinfo.append(kategori7)
        flyttinfo.append(kategori8)
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

