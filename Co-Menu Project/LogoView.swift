//
//  InsertImageView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/18.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Text("매장로고를 이미지 파일을 업로드해주세요.")
                .fontWeight(.bold)
                .font(.system(size: 32))
            addImageView()
                .padding(EdgeInsets(top: 0, leading: 240, bottom: 0, trailing: 240))
            EnterButtonView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct InsertImageView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct addImageView: View {
    
    var body: some View {
        VStack(alignment: .center){
           
            Text("Tip 1. [설정]-[매장 정보 수정] 에서 나중에 추가하실 수 있어요!")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
            Text("Tip 2. 배경이 투명한 파일을 업로드하면 더 예쁘게 사용할 수 있습니다.")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 2, leading: 0, bottom: 24, trailing: 0))
            Button(action: { print("addButton") }) {
                Image(uiImage: UIImage(named: "add")!)
                    .frame(width: 120, height: 120, alignment: .center)
                    .aspectRatio(contentMode: .fill)
            }
            
        }
    }
}
