//
//  Member.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/28.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import Foundation

struct Member: Decodable {
    let name: String
    let ct: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case ct = "ct"
    }
}


let mockMemverData = Member(
    name: "",
    ct: ""
)
