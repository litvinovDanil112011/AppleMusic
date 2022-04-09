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

var arrayCellsLibrary: [ModelCells] = [
ModelCells(imageCell: Image(systemName: "music.note.list"), title: "Плейлисты", isToggle: true),
ModelCells(imageCell: Image(systemName: "music.mic"), title: "Артисты", isToggle: true),
ModelCells(imageCell: Image(systemName: "square.stack"), title: "Альбомы", isToggle: true),
ModelCells(imageCell: Image(systemName: "music.note"), title: "Песни", isToggle: true),
ModelCells(imageCell: Image(systemName: "tv"), title: "Телешоу и фильмы", isToggle: true),
ModelCells(imageCell: Image(systemName: "music.note.tv"), title: "Видеоклипы", isToggle: true),
ModelCells(imageCell: Image(systemName: "person.3"), title: "Жанры", isToggle: true),
ModelCells(imageCell: Image(systemName: "person.2.crop.square.stack"), title: "Сбориники", isToggle: true),
ModelCells(imageCell: Image(systemName: "music.quarternote.3"), title: "Авторы", isToggle: true),
ModelCells(imageCell: Image(systemName: "arrow.down.circle"), title: "Загружено", isToggle: true)
]
