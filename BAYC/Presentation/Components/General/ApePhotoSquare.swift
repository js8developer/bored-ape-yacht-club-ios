//
//  ApePhotoSquare.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct ApePhotoSquare: View {
    
    // MARK: - Public Properties
    
    let apeImage: Image
    let imageSize: CGFloat?
    
    
    // MARK: - Init
    
    init(apeImage: Image, imageSize: CGFloat = Theme.Sizes.squarePhoto) {
        self.apeImage = apeImage
        self.imageSize = imageSize
    }
    
    
    // MARK: - Body
    
    var body: some View {
        apeImage
            .resizable()
            .frame(width: imageSize, height: imageSize)
            .aspectRatio(contentMode: .fill)
            .cornerRadius(Theme.Sizes.buttonCornerRadius)
    }
    
}
