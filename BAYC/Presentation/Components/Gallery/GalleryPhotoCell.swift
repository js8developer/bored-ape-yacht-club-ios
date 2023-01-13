//
//  GalleryPhotoCell.swift
//  BAYC
//
//  Created by Jason Schneider on 1/9/23.
//

import SwiftUI

struct GalleryPhotoCell: View {
    
    // MARK: - Private Properties
    
    let galleryApe: GalleryApe
    
    
    // MARK: - Private Properties
    
    private let imageSize: CGFloat = Theme.Sizes.squarePhoto
    private let imageCornerRadius: CGFloat = Theme.Sizes.buttonCornerRadius
    
    
    // MARK: - Body
    
    var body: some View {
        PhotoSquare
    }
    
}

// MARK: - Components

extension GalleryPhotoCell {

    var PhotoSquare: some View {
        ApePhotoSquare(apeImage: galleryApe.image)
            .padding(.vertical, 2)
    }
    
}
