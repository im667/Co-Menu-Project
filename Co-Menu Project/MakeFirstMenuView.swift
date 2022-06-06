//
//  MakeFirstMenuView.swift
//  Co-Menu Project
//
//  Created by mac on 2022/06/06.
//

import SwiftUI

struct MakeFirstMenuView: View {
    var body: some View {
        VStack{
            SettingMenuView()
            
            EnterButtonView()
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct MakeFirstMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MakeFirstMenuView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


struct SettingMenuView: View {
    
    var body: some View {
        VStack {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                menuIamgeButtonView()
                MenuOptionView()
                }
                AddMenuImageView()
            }
            DiscriptMenuView()
        }
    }
}

struct menuIamgeButtonView : View {
    
    var body: some View {
        Button(action: {
            print("MenuImageButton")
        }, label: {
            Text("메뉴 \n 대표 사진 선택")
                .foregroundColor(.gray)
                .opacity(0.6)
        })
        .frame(width: 172, height: 172, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
    }
    
}

struct MenuOptionView : View {
    
    @State var optionText: String = ""
    
    var options = [
   MenuOption(name: "메뉴명"),
   MenuOption(name: "가격"),
   MenuOption(name: "가격 옵션 (ex:ICE +500)")
    ]
    
    var body: some View {
        VStack{
            ForEach(options, id: \.id ){ options in
                TextField(options.name, text: $optionText)
                    .frame(width:180,height: 52, alignment: .center)
                    .textFieldStyle(.plain)
                    .cornerRadius(16)
                    .padding(.horizontal)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            }
        }
    }
}

struct MenuOption:Identifiable {
    let id = UUID()
    let name : String
}


struct AddMenuImageView :  View {
    //ImageBox Array 추가해야함
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            Text("(선택)메뉴 사진 추가")
                .foregroundColor(.gray)
            Button(action: { print("addButton") }) {
                Image(uiImage: UIImage(named: "add")!)
                    .resizable()
                    .frame(width: 52, height: 52, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
            
        }
    }
}

struct DiscriptMenuView: View {
    @State var placeHolder:String = "메뉴설명을 입력해주세요."
    @State var content: String = ""
    var body: some View {
        ZStack{
                if self.content.isEmpty {
                    TextEditor(text: $placeHolder)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(width:372,height: 120, alignment: .center)
                    .textFieldStyle(.plain)
                    .cornerRadius(16)
                    .padding(.horizontal)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }
                    TextEditor(text: $content)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(width:372,height: 120, alignment: .center)
                    .textFieldStyle(.plain)
                    .cornerRadius(16)
                    .opacity(self.content.isEmpty ? 0.25 : 1)
                    .padding(.horizontal)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                
                }
            }
    }

