//
//  ModelCellsRadio.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 21.04.2022.
//

import SwiftUI

struct ModelCellsRadio: Identifiable {
    let id = UUID().uuidString
    let nameRadioStation: String
    let infoRadioStation: String
    let imageRadioStation: Image
    var isToggle: Bool
}

var arrayInfoRadioStation: [ModelCellsRadio] = [
    ModelCellsRadio(nameRadioStation: "Mixtape Delivery Service", infoRadioStation: "St. Vincent", imageRadioStation: Image("radio1"), isToggle: true),
    ModelCellsRadio(nameRadioStation: "One Mix", infoRadioStation: "Mix state", imageRadioStation: Image("radio2"), isToggle: true),
    ModelCellsRadio(nameRadioStation: "Up next radio", infoRadioStation: "Up next radio", imageRadioStation: Image("radio3"), isToggle: true),
    ModelCellsRadio(nameRadioStation: "The Zane Lowe Shop", infoRadioStation: "Apple Music", imageRadioStation: Image("radio4"), isToggle: true),
    ModelCellsRadio(nameRadioStation: "Rap radio life", infoRadioStation: "Apple Music", imageRadioStation: Image("radio5"), isToggle: true),
    ModelCellsRadio(nameRadioStation: "Музыкальный базар с Бастой", infoRadioStation: "Новое шоу", imageRadioStation: Image("radio6"), isToggle: true)
]





