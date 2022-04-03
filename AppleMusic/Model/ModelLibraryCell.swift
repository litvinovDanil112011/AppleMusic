//
//  ModelLibraryCell.swift
//  AppleMusic
//
//  Created by Daniil Litvinov on 03.04.2022.
//

import SwiftUI

struct ModelLibraryCell: View {
    
    var imageCell: Image
    var title: String
    
    var body: some View {
        HStack{
            imageCell
            Text(title)
        }
        .foregroundColor(.red)
    }
}

