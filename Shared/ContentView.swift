//
//  ContentView.swift
//  Shared
//
//  Created by 于留传 on 2020/11/29.
//

import SwiftUI

struct ContentView: View {
    var co: CustomObject = CustomObject()
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        Button("click", action: {
            
            var num:Int = Int(co.get_number(10))
            
            print(num)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
