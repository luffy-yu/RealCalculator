//
//  PrimaryDisplay.swift
//  RealCalculator
//
//  Created by 于留传 on 2020/12/7.
//

import Foundation
import SwiftUI

@objcMembers
class PrimaryDisplaySetter: NSObject, ObservableObject {
    @Published private(set) var content: String = "0"

    static let sharedInstance: PrimaryDisplaySetter = { PrimaryDisplaySetter() }()

    class func getInstance() -> PrimaryDisplaySetter {
        return sharedInstance
    }

    func set_value(_ s: String) {
        content = s
    }
    
    func get_value() -> String {
        return content
    }
    
}

// dispaly for showing input number
struct PrimaryDisplay: View {
    @ObservedObject var setter: PrimaryDisplaySetter
    
    var width: CGFloat? = nil;
    
    var body: some View{
        Text(setter.content)
            .frame(width: width, height: nil, alignment: .trailing)
            .padding(.trailing, 10)
            .foregroundColor(Color.white)
            .font(.system(size: 100))
    }
}

@objcMembers
class HistoryDisplaySetter: NSObject, ObservableObject {
    @Published private(set) var content: String = "0"

    static let sharedInstance: HistoryDisplaySetter = { HistoryDisplaySetter() }()

    class func getInstance() -> HistoryDisplaySetter {
        return sharedInstance
    }

    func set_value(_ s: String) {
        content = s
    }
    
    func get_value() -> String {
        return content
    }
    
}

// dispaly for showing history
struct HistoryDisplay: View {
    @ObservedObject var setter: HistoryDisplaySetter
    
    var width: CGFloat? = nil;
    
    var body: some View{
        Text(setter.content)
            .frame(width: width, height: nil, alignment: .trailing)
            .padding(.trailing, 10)
            .foregroundColor(Color.white)
            .font(.system(size: 60))
    }
}

// button of keyboard
struct KeyboardButton : View {
    let title: String
    let width: CGFloat
    let height: CGFloat
    let bg: Color
    var body: some View{
        Button(action: {
            PrimaryDisplaySetter.getInstance().set_value(self.title)
        }){
            Text(title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(.largeTitle, design: .monospaced))
                .padding()
                .frame(width: width, height: height, alignment: .center)
                .background(bg)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
    }
}

// buttons in line
struct LineButtons: View {
    var buttons: [KeyboardButton]
    let height: CGFloat? = nil
    let width: CGFloat? = nil
    let linespace: CGFloat
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(), count: buttons.count)){
            ForEach(
                0..<buttons.count,
                id: \.self
            ) {
                buttons[$0]
            }
        }.frame(width: width, height: height, alignment: .center)
        .lineSpacing(linespace)
    }
}
