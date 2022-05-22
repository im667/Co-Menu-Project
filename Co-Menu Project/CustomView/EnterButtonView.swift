//
//  EnterButtonView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/18.
//

import SwiftUI

struct EnterButtonView: View {
    var body: some View {
        VStack {
            Button (action: {
                print("Next")
            }){
                Text("확인")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .lineLimit(0)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
                .frame(width: 320, height: 52, alignment: .center)
                .background(.black)
                .cornerRadius(10)
        }
    }
}

struct EnterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EnterButtonView()
    }
}
