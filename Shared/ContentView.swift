//
//  ContentView.swift
//  Shared
//
//  Created by 于留传 on 2020/11/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("click", action: {
            print("Hello World")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
