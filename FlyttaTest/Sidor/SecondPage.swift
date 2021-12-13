//
//  SecondPage.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-11.
//

import SwiftUI

struct SecondPage: View {
    
    @State var category = FlyttItem()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            
            Text(category.flyttname)
                .font(.custom("Clear Sans Thin", size: 24))
                .fontWeight(/*@START_MENU_TOKEN@*/.thin/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.black)
                
            
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(category.subkategorier!) { item in
                        NavigationLink(destination: ThirdPage(category2: item)) {
                            ContentView(knapp: item.flyttname, bild: item.flyttimage)
                        }
                    }
                }
                .padding(.horizontal)
            }
            Spacer()
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
