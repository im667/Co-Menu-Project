//
//  NameView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/17.
//

import SwiftUI

struct NameView: View {
    
    var body: some View {
        VStack {
            Text("매장명을 입력해주세요.")
                .fontWeight(.bold)
                .font(.system(size: 32))
            NameWriteView()
                .padding(EdgeInsets(top: 0, leading: 240, bottom: 0, trailing: 240))
            EnterButtonView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        }
    
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

    
struct NameWriteView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack(alignment: .trailing){
            TextField("Enter Name", text: $name)
                .frame(height: 52, alignment: .center)
                .textFieldStyle(.plain)
                .cornerRadius(16)
                .padding(.horizontal)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            Text("0/20")
                .foregroundColor(.red)
            
        }
    }
}



