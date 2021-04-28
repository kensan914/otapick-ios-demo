//
//  Blog.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import Foundation

struct Blog: Decodable, Identifiable {
    private(set) var id = UUID()
    let groupId: Int
    let blogCt: Int
    let title: String
    let postDate: String
    let numOfViews: Int
    let numOfDownloads: Int
    let writer: Member
    let url: String
    let officialUrl: String
    
    enum CodingKeys: String, CodingKey {
//        case id = "url"
        case groupId = "group_id"
        case blogCt = "blog_ct"
        case title = "title"
        case postDate = "post_date"
        case numOfViews = "num_of_views"
        case numOfDownloads = "num_of_downloads"
        case writer = "writer"
        case url = "url"
        case officialUrl = "official_url"
    }
}

let mockBlogData = Blog(
//    id: "",
    groupId: 0,
    blogCt: 0,
    title: "",
    postDate: "",
    numOfViews: 0,
    numOfDownloads: 0,
    writer: mockMemverData,
    url: "",
    officialUrl: ""
)
