//
//  BackgroundColorView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/19.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        VStack {
            Text("메뉴판 배경색상을 선택해주세요.")
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

struct BackgroundColorView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct ColorPickView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 36) {
                Text("색상 선택하기")
                .font(.system(size: 20))
                VStack {
                    Button(action: {
                        print ("ColorPick")
                        }){
                            Color.black
                        }
                    .background(Color.black)
                    .frame(width: 120, height: 120, alignment: .center)
                    .buttonStyle(.plain)
                    .cornerRadius(8)
                    Text("현재 색상")
                        .font(.system(size: 16))
                }
        }
    }
    
}
