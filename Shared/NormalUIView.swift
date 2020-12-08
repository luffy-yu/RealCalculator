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
    KeyboardButton(title: "Fn", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "CE", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "C", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "Del", width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top1 = LineButtons(buttons: [
    KeyboardButton(title: "%", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "(", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: ")", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "÷", width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top2 = LineButtons(buttons: [
    KeyboardButton(title: "7", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "8", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "9", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "×", width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top3 = LineButtons(buttons: [
    KeyboardButton(title: "4", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "5", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "6", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "-", width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top4 = LineButtons(buttons: [
    KeyboardButton(title: "1", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "2", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "3", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "+", width: btn_width, height: btn_height, bg: Color.gray),
], linespace: hstack_space)

let btns_top5 = LineButtons(buttons: [
    KeyboardButton(title: "±", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "0", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: ".", width: btn_width, height: btn_height, bg: Color.gray),
    KeyboardButton(title: "=", width: btn_width, height: btn_height, bg: Color.gray),
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
