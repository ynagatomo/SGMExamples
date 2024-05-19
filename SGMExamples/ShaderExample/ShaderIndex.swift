//
//  ShaderIndex.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/17.
//

import Foundation

enum ShaderIndex {
    static let examples = [
        ShaderExample(id: 1, level: .basic,
                      name: "Color Ball", category: "",
                      description: "Position (x, y, z) is mapped to Color (r, g, b)",
                      exampleSceneName: "Ex01", thumbnailImage: "ex01"),
        ShaderExample(id: 2, level: .advanced,
                      name: "Blue Lines", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 5",
                      exampleSceneName: "Ex02", thumbnailImage: "ex02"),
        ShaderExample(id: 3, level: .advanced,
                      name: "Blue/Green Lines", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 5",
                      exampleSceneName: "Ex03", thumbnailImage: "ex03"),
        ShaderExample(id: 4, level: .advanced,
                      name: "Edge Filter", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 46",
                      exampleSceneName: "Ex04", thumbnailImage: "ex04"),
        ShaderExample(id: 5, level: .advanced,
                      name: "Ripple", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 52",
                      exampleSceneName: "Ex05", thumbnailImage: "ex05"),
        ShaderExample(id: 6, level: .advanced,
                      name: "Ripple", category: "",
                      description: "Ref: Satoshi's MSL Shader Day 52",
                      exampleSceneName: "Ex05a", thumbnailImage: "ex05a"),
        ShaderExample(id: 7, level: .basic,
                      name: "Fresnel Effect", category: "",
                      description: "Adjust the Range-Gamma value to modify its opacity curve.",
                      exampleSceneName: "Ex06", thumbnailImage: "ex06"),
        ShaderExample(id: 8, level: .basic,
                      name: "Fresnel Effect", category: "",
                      description: "Adjust the Range-Gamma value to modify its opacity curve.",
                      exampleSceneName: "Ex06a", thumbnailImage: "ex06a"),
        ShaderExample(id: 9, level: .basic,
                      name: "Transition Animation", category: "",
                      description: "Transition between transparent and an image",
                      exampleSceneName: "Ex07", thumbnailImage: "ex07"),
        ShaderExample(id: 10, level: .basic,
                      name: "Dissolve Transition", category: "",
                      description: "Transition between transparent and an image",
                      exampleSceneName: "Ex08", thumbnailImage: "ex08"),
        ShaderExample(id: 11, level: .basic,
                      name: "Fresnel Effect", category: "",
                      description: "Adjust power value to modify its contrast.",
                      exampleSceneName: "Ex06b", thumbnailImage: "ex06b"),
        ShaderExample(id: 12, level: .basic,
                      name: "Gaseous Movement", category: "",
                      description: "Adjust the 3d Fractal Noise to modify its movement.",
                      exampleSceneName: "Ex09", thumbnailImage: "ex09"),
        ShaderExample(id: 13, level: .basic,
                      name: "Glass Ball", category: "",
                      description: "Uses the Environment Specular Radiance.",
                      exampleSceneName: "Ex10", thumbnailImage: "ex10")
    ]
}
