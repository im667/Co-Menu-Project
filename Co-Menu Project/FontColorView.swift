//
//  FontColorView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/19.
//

import SwiftUI

struct FontColorView: View {
    var body: some View {
        VStack {
            Text("글씨 색상을 선택해주세요.")
                .fontWeight(.bold)
                .font(.system(size: 32))
            Text("Tip. [설정]-[색상 변경] 에서 수정 가능합니다!")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
            ColorPickView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
            EnterButtonView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct FontColorView_Previews: PreviewProvider {
    static var previews: some View {
        FontColorView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
