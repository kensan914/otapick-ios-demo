//
//  BlogCellInfo.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct BlogCellInfo: View {
    let label: String
    let iconName: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .imageScale(.medium)
                .foregroundColor(.gray)
            Text(label)
                .font(.footnote)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
        }.padding(.bottom, 6.0)
    }
}

struct BlogCellInfo_Previews: PreviewProvider {
    static var previews: some View {
        BlogCellInfo(label: "", iconName: "")
    }
}
