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
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("lightblue")/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color:Color("ColorTest") , radius: 2)
                .overlay(RoundedRectangle(cornerRadius: 15)
                              .stroke(Color.black, lineWidth: 3))
                            .shadow(radius: 5)
            
            Text(knapp)
                .font(.custom("Clear Sans Heavy", size: 18))
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
