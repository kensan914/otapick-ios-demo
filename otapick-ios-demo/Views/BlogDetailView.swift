//
//  BlogDetailView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct BlogDetailView: View {
    let blog: Blog
    
    var body: some View {
        List {
            Section(header: Text("タイトル")) {
                Text(blog.title)
            }
            Section(header: Text("投稿日")) {
                Text(blog.postDate)
            }
            Section(header: Text("執筆メンバー")) {
                Text(blog.writer.name)
            }
            Section(header: Text("リンク")) {
                LinkButton(url: otapickUrl + blog.url, label: "ヲタピックで閲覧する")
                LinkButton(url: blog.officialUrl, label: "公式ブログで閲覧する")
            }
        }
    }
}

struct BlogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BlogDetailView(blog: mockBlogData)
    }
}


struct LinkButton: View {
    let url: String
    let label: String
    
    @State private var showModal = false
    var body: some View {
        Button(action: {
            self.showModal.toggle()
        }) {
            Text(label)
            .foregroundColor(Color.blue)
        }
        .sheet(isPresented: $showModal) {
            SafariView(url: URL(string: self.url))
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}
