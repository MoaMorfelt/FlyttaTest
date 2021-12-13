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
            
                }
                   
            
            CheckListView()
                .tabItem {
                    Label("Checklist", systemImage: "checkmark.circle")
                }
            
            
                    FavoritView()
                        .tabItem {
                            Label("Favoriter", systemImage: "heart.fill")
                }
            }
        }
        
    }

struct StartTabsView_Previews: PreviewProvider {
    static var previews: some View {
        StartTabsView()
    }
}
