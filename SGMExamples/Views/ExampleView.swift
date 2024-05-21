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
    let startDate = Date.now // for an Animation Timer

    var body: some View {
        VStack {
            if sceneName != "Ex08a" {
                RealityView { content in
                    if let scene = try? await Entity(named: sceneName, in: realityKitContentBundle) {
                        content.add(scene)
                    }
                } // RealityView
            } else {
                // Example: Ex08a ... One-time Dissolve
                TimelineView(.animation) { context in    // Timed Animation
                    RealityView { content in
                        if let scene = try? await Entity(named: sceneName, in: realityKitContentBundle) {
                            content.add(scene)
                        }
                    } update: { content in
                        let time = context.date.timeIntervalSince(startDate) / 5  // Adjust time
                        let rate = Float(time > 1.0 ? 1.0 : time)  // Dissolve rate: [0.0...1.0]

                        if let scene = content.entities.first(where: { $0.name == "Root" }),
                           let model = scene.findEntity(named: "Sphere") as? ModelEntity,
                           var material = model.model?.materials.first as? ShaderGraphMaterial {
                            let value = MaterialParameters.Value.float(rate)
                            try? material.setParameter(name: "Rate", value: value)
                            model.model?.materials = [material]
                        }
                    } // RealityView
                } // TimelineView
            } // else
        } // VStack
    } // body
}

#Preview {
    ExampleView(sceneName: "Ex01")
        .environment(AppStateModel())
}
