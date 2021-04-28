//
//  BlogCellView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct BlogCellView: View {
    let blog: Blog
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(blog.title)
                .bold()
                .font(.headline)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.vertical, 8.0)
            BlogCellInfo(
                label: blog.postDate,
                iconName: "calendar.circle")
            BlogCellInfo(
                label: blog.writer.name,
                iconName: "pencil.circle")
        }
    }
}

struct BlogCellView_Previews: PreviewProvider {
    static var previews: some View {
        BlogCellView(blog: mockBlogData)
    }
}
