//
//  ContentView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let listContents = ["お知らせ1", "お知らせ2", "お知らせ3", "お知らせ4", "お知らせ5"]

    var body: some View {
        NavigationView {
            List(0 ..< listContents.count) { item in
                Text(self.listContents[item])
            }
            .navigationBarTitle("お知らせ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
