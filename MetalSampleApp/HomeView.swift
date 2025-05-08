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
        )
    ]

    // MARK: - body

    var body: some View {
        NavigationStack {
            List(list) { content in
                NavigationLink(destination: content.view) {
                    Text(content.title)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
