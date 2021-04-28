//
//  Group.swift
//  otapick-ios-demo
//
//  Created by 鳥海健人 on 2021/04/29.
//  Copyright © 2021 kentoToriumi. All rights reserved.
//

import Foundation

struct Group: Decodable, Identifiable {
    let id: Int
    let name: String
}


let groupSakura = Group(
    id: 1,
    name: "櫻坂46"
)

let groupHinata = Group(
    id: 2,
    name: "日向坂46"
)

let groupKeyaki = Group(
    id: 3,
    name: "欅坂46"
)
