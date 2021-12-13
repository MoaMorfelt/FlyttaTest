//
//  CheckBoxView.swift
//  FlyttaTest
//
//  Created by Moa Morfelt on 2021-12-08.
//

import SwiftUI

struct CheckBoxView: View {
    
    @Binding var checked : Bool
    @Binding var trimVal : CGFloat
    
    var animatableData: CGFloat {
        get {trimVal}
        set { trimVal = newValue }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0, to: trimVal)
                .stroke(style: StrokeStyle(lineWidth: 2))
                .frame(width: 70, height: 70)
                .foregroundColor(checked ? Color.green : Color.gray.opacity(0.2))
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0, to: 1)
                .fill(checked ? Color.green : Color.gray.opacity(0.2))
                .frame(width: 60, height: 60)
            if checked {
                Image(systemName: "checkmark")
                    .foregroundColor(Color.white)
            }
        }
    }
}


//struct CheckBoxView_Previews: PreviewProvider {
  //  static var previews: some View {
   //     CheckBoxView()
  //  }
//}

