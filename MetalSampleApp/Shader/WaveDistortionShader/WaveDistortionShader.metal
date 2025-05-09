//
//  WaveDistortionShader.metal
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/09.
//  
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 waveDistortion
(
 float2 position,
 float time,
 float speed,
 float smoothing,
 float strength
 ) {
    position.y += sin(position.x / smoothing + time * speed) * strength;
    return position;
}
