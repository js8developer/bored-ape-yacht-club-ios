//
//  WelcomeSection.swift
//  BAYC
//
//  Created by Jason Schneider on 8/19/22.
//

import SwiftUI

struct WelcomeSection: View {
    
    // MARK: - Private Properties
    
    private let titleText: String = "Welcome to the"
    private let subtitleText: String = "Bored Ape Yacht Club"
    private var bodyText: String { createBodyText() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    private let apeImageSpacing: CGFloat = Theme.Spacing.imageGrid
    
    private let accentTextColor: Color = Theme.Colors.baycYellow
    private let mainTextColor: Color = Theme.Colors.baycWhite
    
    private let titleFont: Font = Theme.Fonts.title
    private let accentSubtitleFont: Font = Theme.Fonts.subtitleItalic
    private let bodyFont: Font = Theme.Fonts.body
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: sectionSpacing) {
            HStack {
                VStack(alignment: .leading) {
                    TitleText
                    SubtitleText
                }
                Spacer()
            }
            BodyText(text: bodyText)
            Apes2x2
        }
    }
    
}


// MARK: - Components

extension WelcomeSection {
        
    private var TitleText: some View {
        Text(titleText)
            .textCase(.uppercase)
            .font(accentSubtitleFont)
            .foregroundColor(accentTextColor)
    }
    
    private var SubtitleText: some View {
        Text(subtitleText)
            .textCase(.uppercase)
            .font(titleFont)
            .foregroundColor(mainTextColor)
    }
    
    private var Apes2x2: some View {
        VStack(spacing: apeImageSpacing)  {
            HStack(spacing: apeImageSpacing) {
                ApePhotoSquare(apeImage: Assets.ape1)
                ApePhotoSquare(apeImage: Assets.ape2)
            }
            HStack(spacing: apeImageSpacing)  {
                ApePhotoSquare(apeImage: Assets.ape3)
                ApePhotoSquare(apeImage: Assets.ape4)
            }
        }
    }
    
}


// MARK: - Private Methods

extension WelcomeSection {
    
    private func createBodyText() -> String {
        return "BAYC is a collection of 10,000 Bored Ape NFTs—unique digital collectibles living on the Ethereum blockchain. Your Bored Ape doubles as your Yacht Club membership card, and grants access to members-only benefits, the first of which is access to THE BATHROOM, a collaborative graffiti board. Future areas and perks can be unlocked by the community through roadmap activation."
    }
    
}
