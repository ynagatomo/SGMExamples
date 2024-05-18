//
//  SGMExamplesApp.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/16.
//

import SwiftUI

@main
struct SGMExamplesApp: App {
    @State private var appStateModel = AppStateModel()

    var body: some Scene {
        WindowGroup {
            ShaderListView()
                .environment(appStateModel)
        }
        .defaultSize(width: 600, height: 800)

        WindowGroup(id: AppConstant.exampleWindowID, for: String.self) { $value in
            ExampleView(sceneName: value ?? "Ex01")
                .environment(appStateModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 1.0, height: 1.0, depth: 1.0, in: .meters)
    }
}
