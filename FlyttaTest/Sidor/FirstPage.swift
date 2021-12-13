//
//  FirstPage.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-10.
//

import SwiftUI

struct FirstPage: View {
    
    @State var ekonomi = "Ekonomi"
    @State var onClick = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Flytta Hemifrån")
                    .font(.custom("Clear Sans Heavy", size: 24))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(FlyttaInfo().flyttinfo) { item in
                            NavigationLink(destination: SecondPage(category: item)) {
                                ContentView(knapp: item.flyttname, bild: item.flyttimage)
                                    .padding(.top)
                            }
                        }
                    }
                    /*
                    .padding(.horizontal)
                    .fullScreenCover(isPresented: $onClick) {
                              SecondPage()
                    }
                    */
                }
                Spacer()
            }
        }
    }
}
    


struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
            .padding(0.0)
    }
}

