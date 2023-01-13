//
//  GalleryScreenViewModel.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class GalleryScreenViewModel: ObservableObject {
    
    // MARK: - Public Properties
    
    let titleText = "Gallery"
    
    @Published var galleryApes: [GalleryApe] = []
    
    
    // MARK: - Init
    
    init(){
        self.galleryApes = createGalleryObjects()
    }
    
}


// MARK: - Private Methods

extension GalleryScreenViewModel {
    
    private func createGalleryObjects() -> [GalleryApe]{
        return [
            GalleryApe(image: Assets.ape13),
            GalleryApe(image: Assets.ape14),
            
            GalleryApe(image: Assets.ape9),
            GalleryApe(image: Assets.ape10),
            GalleryApe(image: Assets.ape11),
            GalleryApe(image: Assets.ape12),
            
            GalleryApe(image: Assets.ape5),
            GalleryApe(image: Assets.ape6),
            GalleryApe(image: Assets.ape8),
            GalleryApe(image: Assets.ape7),
            
            GalleryApe(image: Assets.garga),
            GalleryApe(image: Assets.gordy),
            GalleryApe(image: Assets.tomato),
            GalleryApe(image: Assets.sass),
            
            GalleryApe(image: Assets.ape1),
            GalleryApe(image: Assets.ape2),
            GalleryApe(image: Assets.ape3),
            GalleryApe(image: Assets.ape4),
        ]
    }
    
}
