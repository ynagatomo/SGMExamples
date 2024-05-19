//
//  ShaderListView.swift
//  SGMExamples
//
//  Created by Yasuhito Nagatomo on 2024/05/16.
//

import SwiftUI

struct ShaderListView: View {
    @Environment(AppStateModel.self) private var appStateModel
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @State private var showingExampleWindow = false

    var body: some View {
        VStack {
            Text("Shader Examples")
                .font(.title2)
                .padding(.top)

            ScrollView {
                LazyVStack {
                    ForEach(ShaderIndex.examples) { item in
                        Button(action: {
                            print("Tapped \(item.name)")
                            openExampleWindow(item: item)
                        }, label: {
                            ShaderItemView(shaderItem: item)
                        })
                        .buttonBorderShape(.roundedRectangle(radius: 30))
                    } // ForEach
                } // LazyVStack
            } // ScrollView
            .padding(.horizontal)
            .padding(.bottom)
        } // VStack
    } // body

    private func openExampleWindow(item: ShaderExample) {
        if showingExampleWindow {
            // Users might already close the window manually. It's ok.
            dismissWindow(id: AppConstant.exampleWindowID)
        }
        showingExampleWindow = true
        openWindow(id: AppConstant.exampleWindowID, value: item.exampleSceneName)
    }
}

#Preview {
    ShaderListView()
        .environment(AppStateModel())
        .frame(width: 600)
        .background(.ultraThickMaterial)
}

struct ShaderItemView: View {
    let shaderItem: ShaderExample
    var header: String {
        "No. \(shaderItem.id) "
        + shaderItem.category.rawValue
        + "Shader ["
        + shaderItem.level.rawValue
        + "]"
    }

    var body: some View {
        HStack {
            if let thumbnail = shaderItem.thumbnailImage {
                Image(thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } else {
                Color.gray
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }

            VStack(alignment: .leading) {
                Text(header)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.leading, 8)
                Text(shaderItem.name)
                    .font(.title3)
                    .padding(4)
                Text(shaderItem.description)
                    .foregroundStyle(.secondary)
                    .padding(4)
            } // VStack

            Spacer()
        } // HStack
    } // body
}
