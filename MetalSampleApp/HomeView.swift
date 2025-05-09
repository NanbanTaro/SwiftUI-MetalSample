//
//  HomeView.swift
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/08.
//  
//

import SwiftUI

struct HomeView: View {

    private let list = [
        ShaderListItem(
            id: 1,
            title: "ColorfulShader",
            view: AnyView(ColorfulShaderView())
        ),
        ShaderListItem(
            id: 2,
            title: "WaveDistortionShader",
            view: AnyView(WaveDistortionShaderView())
        )
    ]

    // MARK: - body

    var body: some View {
        NavigationStack {
            List(list) { item in
                NavigationLink(destination: item.view) {
                    HStack(spacing: 12) {
                        Text("\(item.id)")
                        Text(item.title)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
