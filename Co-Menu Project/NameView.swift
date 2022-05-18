//
//  NameView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/17.
//

import SwiftUI

struct NameView: View {
    
    var body: some View {
        VStack{
            NameWriteView()
            EnterButtonView()
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))
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
        VStack{
            Text("매장명을 입력해 주세요.")
            TextField("Enter Store Name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("0/20")
                .foregroundColor(.red)
        }
    }

}



