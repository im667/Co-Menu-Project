//
//  MakeCategoryView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/06/05.
//

import SwiftUI

struct MakeCategoryView: View {
    
    var body: some View {
        VStack {
            Text("카테고리를 등록해주세요.")
                .fontWeight(.bold)
                .font(.system(size: 32))
            TipsView()
            CategoryBox()
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
            EnterButtonView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct MakeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MakeCategoryView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct TipsView: View {
    
    var body: some View {
        VStack(alignment: .center){
            Text("Tip 1. [설정]-[매장 정보 수정] 에서 나중에 수정하실 수 있어요!")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
            Text("🙂 카테고리는 1개 이상 작성해주세요.")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 2, leading: 0, bottom: 24, trailing: 0))
        }
    }
}



struct CategoryBox : View {
    @State var categoryTitle: String = ""
    
    var categoryItems = [
        Category(name: "ex:Coffee"),
        Category(name: "ex:Dessert"),
        Category(name: "ex:Tea"),
        Category(name: "ex:Other")
        ]
 
    var body: some View {
        HStack {
            ForEach(categoryItems,id: \.id){ categoryItems in TextField(categoryItems.name, text: $categoryTitle)
            }
                .frame(height: 52, alignment: .center)
                .textFieldStyle(.plain)
                .cornerRadius(16)
                .padding(.horizontal)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        }
    }
}

struct Category: Identifiable {
    let id = UUID()
    let name : String
}
