//
//  TabView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/29.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct BlogListTabView: View {    
    var body: some View {
        TabView {
            BlogListView(group: groupSakura)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text(groupSakura.name)
            }.tag(1)
            BlogListView(group: groupHinata)
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text(groupHinata.name)
            }.tag(2)
            BlogListView(group: groupKeyaki)
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text(groupKeyaki.name)
            }.tag(2)
        }
    }
}

struct BlogListTabView_Previews: PreviewProvider {
    static var previews: some View {
        BlogListTabView()
    }
}
