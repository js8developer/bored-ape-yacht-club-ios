//
//  GalleryPhotoGrid.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct GalleryPhotoGrid: View {
    
    // MARK: - Public Properties
    
    let galleryApes: [GalleryApe]
    
    
    // MARK: - Private Properties
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    

    // MARK: - Body
    
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(galleryApes){ (galleryApe) in
                GalleryPhotoCell(galleryApe: galleryApe)
            }
        }
    }
    
}


