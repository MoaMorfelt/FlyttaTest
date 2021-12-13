//
//  FavoritView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-08.
//

import SwiftUI

struct FavoritView: View {
    
    @State var favs = [FlyttItem]()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Favoriter")
                    .font(.custom("Clear Sans Thin", size: 24))
                List(favs) { fav in
                    NavigationLink(destination: ThirdPage(category2: fav)) {
                        Text(fav.flyttname)
                    }
                    
                    
                }
            }.onAppear(perform: {
                getFav()
            })
        }
    }
    
    
    func getFav()
    {
        var favlist = [String]()
        
        if let savedfav = UserDefaults.standard.array(forKey: "fav") as? [String] {
            favlist = savedfav
        }
        
        favs.removeAll()
        for flyttitem in FlyttaInfo().flyttinfo
        {
            if let subcat = flyttitem.subkategorier {
                for subitem in subcat {
                    if(favlist.contains(subitem.flyttname))
                    {
                        favs.append(subitem)
                    }
                }
            }
        }
    }
    
    
}

struct FavoritView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritView()
    }
}
