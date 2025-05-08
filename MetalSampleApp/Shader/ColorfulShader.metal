//
//  ColorfulShader.metal
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/08.
//  
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 colorful
(
 float2 position,
 half4 color,
 float secs
) {
    half r = abs(sin(secs * 1.0) + color.r);
    half g = abs(cos(secs * 1.3) + color.g);
    half b = abs(tan(secs * 1.5) + color.b);
    return half4(r, g , b, 1.0);
}
