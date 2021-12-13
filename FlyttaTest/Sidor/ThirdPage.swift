//
//  ThirdPage.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-17.
//

import SwiftUI

struct ThirdPage: View {
    
    @State var category2 = FlyttItem()
    
    @State var favtext = "Favorit"
    
    var body: some View {
        
        
        
        VStack {

            HStack {
                Spacer()
                Button(action: {
                    makeFav()
                }) {
                    Label(favtext, systemImage: "heart")
                
                }
            }
            
            ScrollView{
            Text(category2.flyttname)
                    .font(.custom("Clear Sans Thin", size: 24))
                    .padding(.bottom, 3.0)
                
            Text(try! AttributedString(markdown: category2.flytttext))
                    .font(.custom("Clear Sans Thin", size: 18))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .lineSpacing(3)
                .padding(.horizontal, 15.0)
            
            Spacer()
        }.onAppear(perform: {
            checkFav()
        })
        }
    }
    
    func checkFav()
    {
        var favlist = [String]()
        
        if let savedfav = UserDefaults.standard.array(forKey: "fav") as? [String] {
            favlist = savedfav
        }
        
        if(favlist.contains(category2.flyttname))
        {
            favtext = "Ta bort favorit"
        } else {
            favtext = "Gör favorit"
        }
    }
    
    func makeFav()
    {
        var favlist = [String]()
        
        if let savedfav = UserDefaults.standard.array(forKey: "fav") as? [String] {
            favlist = savedfav
        }
        
        if(favlist.contains(category2.flyttname))
        {
            if let index = favlist.firstIndex(of: category2.flyttname) {
                favlist.remove(at: index)
            }
        } else {
            favlist.append(category2.flyttname)
        }
        
        UserDefaults.standard.set(favlist, forKey: "fav")
        
        checkFav()
    }
    
    
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        
        ThirdPage()
    }
}
