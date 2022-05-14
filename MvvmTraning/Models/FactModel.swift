//
//  FactModel.swift
//  MvvmTraning
//
//  Created by mobin on 4/29/22.
//

import Foundation

struct FactModel: Codable {
    let status: Status
    let id, user, text, type: String
    let deleted: Bool
    let createdAt, updatedAt: String
    let v: Int
    let source: String?
    let used: Bool?

    enum CodingKeys: String, CodingKey {
        case status
        case id = "_id"
        case user, text, type, deleted, createdAt, updatedAt
        case v = "__v"
        case source, used
    }
}

// MARK: - Status
struct Status: Codable {
    let verified: Bool?
    let sentCount: Int
}

typealias Welcome = [FactModel]
