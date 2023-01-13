//
//  GalleryScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct GalleryScreen: View {
    
    // MARK: - View Models
    
    @StateObject private var viewModel: GalleryScreenViewModel = GalleryScreenViewModel()
    
    
    // MARK: - Private Properties
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: sectionSpacing) {
                TitleText(title: viewModel.titleText)
                GalleryPhotoGrid(galleryApes: viewModel.galleryApes)
                ViewCollectionButton
                Spacer(minLength: Theme.Sizes.tabBarHeight)
            }
        }
        .padding(.horizontal)
    }
    
}


// MARK: - Components

extension GalleryScreen {
    
    private var ViewCollectionButton: some View {
        YellowButton(text: "View Collection on OpenSea", url: Endpoints.OpenSea.collection)
    }
    
}
