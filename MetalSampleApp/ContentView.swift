//
//  ContentView.swift
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/08.
//  
//

import SwiftUI

struct ContentView: View {

    private let date = Date.now
    var body: some View {
        TimelineView(.animation) { context in
            let elapsedTime = context.date.timeIntervalSince1970 - date.timeIntervalSince1970
            Image(.luffy)
                .resizable()
                .frame(width: 300, height: 300)
                .colorEffect(
                    ShaderLibrary.default.colorful(
                        .float(elapsedTime)
                    )
                )
        }
    }
}

#Preview {
    ContentView()
}
