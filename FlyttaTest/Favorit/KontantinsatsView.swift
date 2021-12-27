//
//  KontantinsatsView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-20.
//

import SwiftUI

struct KontantinsatsView: View {
    
    @State var nummer1 = ""
    @State var multiply = 0
    
    var body: some View {
        VStack {
            Text("Kontantinsats")
                .font(.custom("Clear Sans Thin", size: 24))
                .fontWeight(.heavy)
                .padding(.vertical)
            
            Text("Skriv in priset på lägenheten och räkna ut vad du minst behöver betala i kontantinsats.")
                .font(.custom("Clear Sans Thin", size: 18))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20.0)
            
            TextField("Skriv in beloppet i SEK här:", text: $nummer1)
                .padding()
                .keyboardType(.numbersAndPunctuation)
                .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray, lineWidth: 1))
                .padding()
                .font(.custom("Clear Sans Thin", size: 18))
                
            HStack {
                Spacer()
                Button(action: {
                    nummer1 = ""
                    multiply = 0
                }) {
                    Label("", systemImage: "trash.circle.fill")
                        .padding(.trailing)
                        .imageScale(.large)
                        .foregroundColor(Color("Lila"))
                        
                    
            }
            }
            
            HStack {
                Button(action: {
                    calculation(nummer1: nummer1)
                    print(multiply)
                }) {
                    Text("RÄKNA UT")
                        .font(.custom("Clear Sans Thin", size: 20))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                }
                .padding()
                .background(Color("lightblue"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color:Color("Lila") , radius: 2)
                
            }
            
            Text("Beloppet blir:")
                .font(.custom("Clear Sans Thin", size: 20))
                .padding(.top)
            
            Text(String(multiply)+" SEK")
                .padding(.all)
                .padding(.horizontal, 30)
                .border(Color("Lila"))
                .font(.custom("Clear Sans Thin", size: 18))
                
                
            Spacer()
    }
}
func calculation(nummer1: String)
{
   
    multiply = Int(Double(nummer1)!*0.15)
}
}

struct KontantinsatsView_Previews: PreviewProvider {
    static var previews: some View {
        KontantinsatsView()
            .padding()
    }
}
