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

    func set_value(s: String) {
        content = s
    }
    
    func get_value() -> String {
        return content
    }
    
}

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
