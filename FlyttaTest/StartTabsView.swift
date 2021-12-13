//
//  StartTabsView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-09.
//

import SwiftUI

struct StartTabsView: View {
    var body: some View {
        TabView {
            FirstPage()
                .tabItem {
                    Label("Hem", systemImage: "house.fill")
                        .foregroundColor(Color("ColorTest"))
                }
            
            
            CheckListView()
                .tabItem {
                    Label("Checklist", systemImage: "checkmark.circle")
                        .foregroundColor(Color("ColorTest"))
                }
            
            
            FavoritView()
                .tabItem {
                    Label("Favoriter", systemImage: "heart.fill")
                        .foregroundColor(Color("ColorTest"))
                }
        }
    }
    
}

struct StartTabsView_Previews: PreviewProvider {
    static var previews: some View {
        StartTabsView()
    }
}
