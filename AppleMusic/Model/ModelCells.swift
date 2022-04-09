//
//  ModelCells.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 09.04.2022.
//

import SwiftUI

struct ModelCells: Identifiable  {
    let id: String = UUID().uuidString
    let imageCell: Image
    let title: String
    var isToggle: Bool
}
