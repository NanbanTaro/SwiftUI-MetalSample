//
//  ShaderListItem.swift
//  MetalSampleApp
//
//  Created by NanbanTaro on 2025/05/08.
//  
//

import SwiftUICore

/// リスト表示するアイテム
struct ShaderListItem: Identifiable {
    /// ID
    let id: Int
    /// 表示名
    let title: String
    /// View
    let view: AnyView
}
