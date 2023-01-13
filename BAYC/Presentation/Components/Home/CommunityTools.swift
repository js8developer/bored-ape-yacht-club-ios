//
//  CommunityTools.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct CommunityTools: View {

    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Private Properties
    
    private let titleText: String = "Community Tools"
    private var bodyText: String { createBodyText() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    
    private let textColor: Color = Theme.Colors.baycWhite
    
    private let titleFont: Font = Theme.Fonts.title
    private let bodyFont: Font = Theme.Fonts.body
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: sectionSpacing) {
            TitleText(title: titleText)
            BodyText(text: bodyText)
            NFTExpoButton
            RarityButton
        }
    }
    
}


// MARK: - Components

extension CommunityTools {
    
    private var NFTExpoButton: some View {
        YellowButton(text: "NFTEXP.IO", url: Endpoints.nftExpo)
    }
    
    private var RarityButton: some View {
        YellowButton(text: "RARITY.TOOLS", url: Endpoints.rarity)
    }
    
}


// MARK: - Private Methods

extension CommunityTools {
  
    private func createBodyText() -> String {
        return "Here are some helpful tools created by the Bored Ape Yacht Club community. Please note that these are unofficial in nature. Every assignment of an ape's overall value or rarity is inherently subjective."
    }
    
}
