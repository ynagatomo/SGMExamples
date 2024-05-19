//
//  ShaderExample.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/17.
//

import Foundation

struct ShaderExample: Identifiable {
    enum Level: String {
        case basic = "Basic"
        case advanced = "Advanced"
    }
    enum Category: String {
        case vertex = "Vertex"
        case segment = "Segment"
        case both = "Vertex/Segment"
    }
    let id: Int
    // [Type]
    let level: Level
    let category: Category
    // [Description]
    let name: String
    let description: String
    // [Example Scene]
    let exampleSceneName: String
    let thumbnailImage: String?
}
