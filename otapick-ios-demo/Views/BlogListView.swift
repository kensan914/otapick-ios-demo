//
//  BlogListView.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import SwiftUI

struct BlogListView: View {
    let group: Group
    @ObservedObject private var blogListViewModel: BlogListViewModel
    
    init(group: Group) {
        self.group = group
        self.blogListViewModel = BlogListViewModel(group: group)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                List(blogListViewModel.blogsData) { blog in
                    NavigationLink(destination: BlogDetailView(blog: blog)) {
                        BlogCellView(blog: blog)
                    }
                }
                if self.blogListViewModel.isShowIndicator {
                    SpinnerView()
                }
            }
            .navigationBarTitle(group.name + "のブログ一覧")
        }
    }
}

struct BlogListView_Previews: PreviewProvider {
    static var previews: some View {
        BlogListView(group: groupKeyaki)
    }
}
