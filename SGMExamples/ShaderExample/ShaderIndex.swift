//
//  ShaderIndex.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/17.
//

import Foundation

enum ShaderIndex {
    static let examples = [
        ShaderExample(id: 1, name: "Color Ball", category: "",
                      description: "Position (x, y, z) is mapped to Color (r, g, b)",
                      exampleSceneName: "Ex01", thumbnailImage: "ex01"),
        ShaderExample(id: 2, name: "Blue Lines", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 5",
                      exampleSceneName: "Ex02", thumbnailImage: "ex02"),
        ShaderExample(id: 3, name: "Blue/Green Lines", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 5",
                      exampleSceneName: "Ex03", thumbnailImage: "ex03"),
        ShaderExample(id: 4, name: "Edge Filter", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 46",
                      exampleSceneName: "Ex04", thumbnailImage: "ex04"),
        ShaderExample(id: 5, name: "Ripple", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 52",
                      exampleSceneName: "Ex05", thumbnailImage: "ex05"),
        ShaderExample(id: 6, name: "Ripple", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 52",
                      exampleSceneName: "Ex05a", thumbnailImage: "ex05a"),
        ShaderExample(id: 7, name: "Fresnel Effect", category: "",
                      description: "Adjust the Range-Gamma value to modify its opacity curve.",
                      exampleSceneName: "Ex06", thumbnailImage: "ex06"),
        ShaderExample(id: 8, name: "Fresnel Effect", category: "",
                      description: "Adjust the Range-Gamma value to modify its opacity curve.",
                      exampleSceneName: "Ex06a", thumbnailImage: "ex06a"),
        ShaderExample(id: 9, name: "Transition Animation", category: "",
                      description: "Transition between transparent and an image",
                      exampleSceneName: "Ex07", thumbnailImage: "ex07"),
        ShaderExample(id: 10, name: "Dissolve Transition", category: "",
                      description: "Transition between transparent and an image",
                      exampleSceneName: "Ex08", thumbnailImage: "ex08"),
        ShaderExample(id: 11, name: "Fresnel Effect", category: "",
                      description: "Adjust power value to modify its contrast.",
                      exampleSceneName: "Ex06b", thumbnailImage: "ex06b")
    ]
}
