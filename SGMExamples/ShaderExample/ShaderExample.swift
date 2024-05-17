//
//  ShaderExample.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/17.
//

import Foundation

struct ShaderExample: Identifiable { // , Hashable, Codable {
    let id: Int
    // [Description]
    let name: String
    let category: String
    let description: String
    // [Example Scene]
    let exampleSceneName: String
    let thumbnailImage: String?
}
