//
//  NormalUIView.swift
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

import SwiftUI

func btn_clicked() -> Void {
    print("clicked")
}

let color_light_gray:Color =
    Color(.sRGB, red: 0.1, green: 0.1, blue: 0.1, opacity: 1.0)
    
let default_color:Color =
    Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0)

let switch_color:Color =
    Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 1.0)

let special_colors: [String: Color] = [
    "C": Color.gray,
    "±": Color.gray,
    "%": Color.gray,
    
    "÷": Color.orange,
    "×": Color.orange,
    "-": Color.orange,
    "+": Color.orange,
    
    "N/s": switch_color,
    "n/S": switch_color,
]

func get_color_by_str(_ name: String) -> Color
{
    return special_colors[name] ?? default_color
}

let hstack_space:CGFloat = 5
let vstack_space:CGFloat = 5

struct CustomButton : View {
    let title: String
    let width: CGFloat
    let height: CGFloat
    let bg: Color
    var body: some View{
        Button(action: btn_clicked){
            Text(title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(.largeTitle, design: .monospaced))
                .padding()
                .frame(width: width, height: height, alignment: .center)
                .background(get_color_by_str(title))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
    }
}

struct HStackButtons: View {
    let buttons: [String]
    let height: CGFloat
    let width: CGFloat
    var rows: [GridItem] =
            Array(repeating: .init(), count: 4)
    var color: Color = Color.orange
    var body: some View{
        LazyVGrid(columns: rows){
            ForEach(
                0...buttons.count-1,
                id: \.self
            ) {
                CustomButton(title: buttons[$0],
                             width: width,
                             height: height, bg:color)
            }
        }.lineSpacing(vstack_space)
    }
}

struct NormalUIView: View {
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    let available_width = UIScreen.main.bounds.size.width
    let available_height = UIScreen.main.bounds.height
    
    let btn_width = UIScreen.main.bounds.size.width / 4.0
    let btn_height = UIScreen.main.bounds.size.height * 0.618 / 5.0
    
    let primary_display_height = UIScreen.main.bounds.size.height * (1-0.618) * 0.618
    
    let history_display_height =
        UIScreen.main.bounds.size.height * (1-0.7) * (1-0.618)
    
    var btns0:[String] = ["N/s", "0", ".", "="]
    
    var btns1:[String] = ["1", "2", "3", "+"]
    
    var btns2:[String] = ["4", "5", "6", "-"]
    
    var btns3:[String] = ["7", "8", "9", "×"]
    
    var btns4:[String] = ["C", "±", "%", "÷"]
    
    var rows: [GridItem] =
            Array(repeating: .init(), count: 7)
    
    var body: some View {
        LazyHGrid(rows: rows, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: hstack_space, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
            Text("1 + 2")
                .frame(width: available_width, height: nil, alignment: .trailing)
                .padding(.trailing, 10)
                .foregroundColor(Color.gray)
                .font(.system(size: 60))
            Text("0").frame(width: available_width, height: nil, alignment: .trailing)
                .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .font(.system(size: 100))
            HStackButtons(buttons: btns4, height: btn_height, width: btn_width)
            HStackButtons(buttons: btns3, height: btn_height, width: btn_width)
            HStackButtons(buttons: btns2, height: btn_height, width: btn_width)
            HStackButtons(buttons: btns1, height: btn_height, width: btn_width)
            HStackButtons(buttons: btns0, height: btn_height, width: btn_width)
        })
        .frame(width: available_width, height: available_height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
//        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
    }
}

struct NormalUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NormalUIView()
        }
    }
}
