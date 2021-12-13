//
//  ThirdPage.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-17.
//

import SwiftUI

struct ThirdPage: View {
    
    @State var category2 = FlyttItem()
    
    @State var isFav = false
    
    var body: some View {
        
        
        
        VStack {

            HStack {
                Spacer()
                Button(action: {
                    makeFav()
                }) {
                    if(isFav)
                    {
                        Label("", systemImage: "heart.fill")
                            .imageScale(.large)
                            .foregroundColor(Color("ColorTest"))
                            .padding(.trailing, 10.0)
                    } else {
                        Label("", systemImage: "heart")
                            .imageScale(.large)
                            .foregroundColor(Color("ColorTest"))
                            .padding(.trailing, 10.0)
                    }
                    
                
                }
            }
            
            ScrollView{
            Text(category2.flyttname)
                    .font(.custom("Clear Sans Thin", size: 24))
                    .padding(.bottom, 3.0)
                
            Text(try! AttributedString(markdown: category2.flytttext, options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace)))
                    .font(.custom("Clear Sans Thin", size: 18))
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .lineSpacing(3)
                .padding(.horizontal, 10.0)
            
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
            isFav = true
        } else {
            isFav = false
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
