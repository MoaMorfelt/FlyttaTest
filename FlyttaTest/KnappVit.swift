//
//  KnappVit.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-11-17.
//

import SwiftUI

struct KnappVit: View {
    
    @State var knapp2 = "Ekonomi"
    @State var bild = "bild"
    
    var body: some View {
        VStack {
            Image(bild)
                .resizable()
                .padding()
                .frame(width: 100.0, height: 100.0)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Text(knapp2)
                .font(.custom("Clear Sans Thin", size: 18))
                .fontWeight(/*@START_MENU_TOKEN@*/.thin/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.black)
        }
    }
}

struct KnappVit_Previews: PreviewProvider {
    static var previews: some View {
        KnappVit()
            .previewLayout(.sizeThatFits)
    }
}
