//
//  WaveDistortionShaderView.swift
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/09.
//  
//

import SwiftUI

struct WaveDistortionShaderView: View {
    private let date = Date.now

    var body: some View {
        TimelineView(.animation) { context in
            let time = context.date.timeIntervalSince1970 - date.timeIntervalSince1970
            Image(.luffy)
                .resizable()
                .scaledToFit()
                .distortionEffect(
                    ShaderLibrary.default.waveDistortion(
                        .float(time),
                        .float(5),
                        .float(10),
                        .float(5)
                    ),
                    maxSampleOffset: CGSize(width: 10, height: 10)
                )
                .drawingGroup()
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    WaveDistortionShaderView()
}
