//
//  ExampleView.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/16.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ExampleView: View {
    @Environment(AppStateModel.self) private var appStateModel
    let sceneName: String

    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: sceneName, in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}

#Preview {
    ExampleView(sceneName: "Ex01")
        .environment(AppStateModel())
}
