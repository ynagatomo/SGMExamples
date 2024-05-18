//
//  ShaderExample.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/17.
//

import Foundation

struct ShaderExample: Identifiable {
    enum Level {
        case basic, advanced
    }
    let id: Int
    // [Level]
    let level: Level
    // [Description]
    let name: String
    let category: String
    let description: String
    // [Example Scene]
    let exampleSceneName: String
    let thumbnailImage: String?
}
