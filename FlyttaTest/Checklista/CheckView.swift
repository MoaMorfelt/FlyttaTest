//
//  CheckView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-08.
//

import SwiftUI

struct CheckView: View {
    
    @State var trimVal : CGFloat = 0
    @State var checked = false
    
    var body: some View {
        Button(action: {
            if !self.checked {
                withAnimation(Animation.easeIn(duration: 0.8)) {
                self.trimVal = 1
                self.checked.toggle()
            }
        } else {
            withAnimation {
                self.trimVal = 0
                self.checked.toggle()
            }
        }
            
        }) {
            CheckBoxView(checked: $checked, trimVal: $trimVal)
                .onTapGesture {
                    if !self.checked {
                        withAnimation(Animation.easeIn(duration: 0.8)) {
                            self.trimVal = 1
                            self.checked.toggle()
                        }
                    } else {
                        withAnimation {
                            self.trimVal = 0
                            self.checked.toggle()
                        }
                    }
                }
        }
    }
}
struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
