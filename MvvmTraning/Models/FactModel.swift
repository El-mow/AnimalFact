//
//  FactModel.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import Foundation

struct FactModel: Decodable {
    let status: Status
    let _id:String
    let updatedAt, createdAt, user: String
    let text: String
    let deleted: Bool
    let source: String?
    let __v : Int
    let type: String

    enum CodingKeys: String, CodingKey {
        case status
        case _id
        case updatedAt, createdAt, user, text, deleted, source
        case __v
        case type
    }
}

// MARK: - Status
struct Status: Decodable {
//    let verified: Int?
    let sentCount: Int
}
