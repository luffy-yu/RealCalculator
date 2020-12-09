//
//  NormalUIView.swift
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

import SwiftUI

let hstack_space:CGFloat = 5
let vstack_space:CGFloat = 5

let screen_width = UIScreen.main.bounds.size.width
let screen_height = UIScreen.main.bounds.size.height

let pds = PrimaryDisplaySetter.getInstance();
let primaryDisplay = PrimaryDisplay(setter: pds, width: screen_width)

let hds = HistoryDisplaySetter.getInstance()
let historyDisplay = HistoryDisplay(setter: hds, width: screen_width)

let btn_width = screen_width / 4.0
let btn_height = screen_height * 0.618 / 6.0

let primary_display_height = screen_height * (1-0.618) * 0.618

let history_display_height = screen_height * (1-0.7) * (1-0.618)

let btns_top0 = LineButtons(buttons: [
    KeyboardButton(title: "Fn", _id: 0, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "Hy", _id: 0, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "C", _id: 81, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "Del", _id: 0, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top1 = LineButtons(buttons: [
    KeyboardButton(title: "%", _id: 118, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "(", _id: 0, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: ")", _id: 0, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "÷", _id: 91, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top2 = LineButtons(buttons: [
    KeyboardButton(title: "7", _id: 137, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "8", _id: 138, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "9", _id: 139, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "×", _id: 92, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top3 = LineButtons(buttons: [
    KeyboardButton(title: "4", _id: 134, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "5", _id: 135, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "6", _id: 136, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "-", _id: 94, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top4 = LineButtons(buttons: [
    KeyboardButton(title: "1", _id: 131, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "2", _id: 132, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "3", _id: 133, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "+", _id: 93, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top5 = LineButtons(buttons: [
    KeyboardButton(title: "±",_id: 0, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "0", _id: 130, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: ".", _id: 84, width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "=", _id: 121, width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

struct NormalUIView: View {
    
    var rows: [GridItem] =
            Array(repeating: .init(), count: 8)
    
    var body: some View {
        LazyHGrid(rows: rows, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: hstack_space, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
            historyDisplay
            primaryDisplay
            btns_top0
            btns_top1
            btns_top2
            btns_top3
            btns_top4
            btns_top5
        })
        .frame(width: screen_width, height: screen_height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
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
