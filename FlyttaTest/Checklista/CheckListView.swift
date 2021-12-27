//
//  CheckListView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-08.
//

import SwiftUI

struct CheckListView: View {
    
    @State var savedcheckList = [String]()
    
    //Objekt i listan
    @State var checkitems = ["Köp eller låna flyttkartonger",
        "Boka flyttfirma eller flyttbil",
        "Säg upp parkeringsplats",
        "Flyttanmälan till Skatteverket",
        "Beställ eftersändning ",
        "Beställ larm",
        "Beställ bredband",
        "Adressändring",
        "Flytta hemförsäkringen",
        "Flytta elavtalet",
        "Beställ flyttstäd",
        "Rensa igenom kyl, frys och skafferi",
        "Packa ner dina tillhörigheter",
        "Packa ihop sakerna i förrådet",
        "Ta fram verktyg till flyttdagen",
        "Meddela grannar",
        "Flytthandla till flyttdagen",
        "Packa en väska med nödvändigheter",
        "Hämta nycklarna",
    "Köp en brandvarnare, brandfilt & brandsläckare"]
    
    
    
    var body: some View {
        VStack {
            Text("Checklista")
                .font(.custom("Clear Sans Thin", size: 24))
            .padding(.top)
            
            
            List(checkitems, id: \.self) { checkitem in
                
                if(savedcheckList.contains(checkitem))
                {
                    Text(checkitem)
                        .font(.custom("Clear Sans Thin", size: 18))
                        .strikethrough()
                        .onTapGesture {
                            if let index = savedcheckList.firstIndex(of: checkitem) {
                                savedcheckList.remove(at: index)
                                UserDefaults.standard.set(savedcheckList, forKey: "checklist")
                            }
                        }
                    
                } else {
                    Text(checkitem)
                        .font(.custom("Clear Sans Thin", size: 18))
                        .onTapGesture {
                            savedcheckList.append(checkitem)
                            UserDefaults.standard.set(savedcheckList, forKey: "checklist")
                        }
                }
            }
            
        }.onAppear(perform: {
            getChecklist()
        })
    }
    
    func getChecklist()
    {
        savedcheckList = [String]()
        
        if let savedfav = UserDefaults.standard.array(forKey: "checklist") as? [String] {
            savedcheckList = savedfav
        }
    }
    
}

struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListView()
    }
}
