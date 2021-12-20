//
//  ContentView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-10.
//

import SwiftUI

struct ContentView: View {
    
    @State var knapp = "Ekonomi"
    @State var bild = "bild"
    
    var body: some View {
        VStack {
            Image(bild)
                .resizable()
                .padding()
                .frame(width: 100.0, height: 100.0)
                .background(Color("lightblue"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color:Color("Lila") , radius: 2)
                
            
            Text(knapp)
                .font(.custom("Clear Sans Thin", size: 13))
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
        
    }
}
