//
//  FairDistribution.swift
//  BAYC
//
//  Created by Jason Schneider on 8/19/22.
//

import SwiftUI

struct FairDistribution: View {
    
    // MARK: - Private Properties
    
    private let titleText: String = "Fair Distribution"
    private let subtitleText: String = "(Bonding Curves are a Ponzi)"
    private var bodyText: String { createBodyText() }
    private var noteText: String { createNoteText() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    private let titleStackSpacing: CGFloat = 8.0
    
    private let mainTextColor: Color = Theme.Colors.baycWhite
    private let accentTextColor: Color = Theme.Colors.baycYellow
    
    private let accentTitleFont: Font = Theme.Fonts.titleItalic
    private let accentSubtitleFont: Font = Theme.Fonts.subtitleItalic
    private let bodyFont: Font = Theme.Fonts.body
    private let captionItalicFont: Font = Theme.Fonts.captionItalic
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: sectionSpacing) {
            HStack {
                VStack(alignment: .leading, spacing: titleStackSpacing) {
                    TitleText
                    SubtitleText
                }
                Spacer()
            }
            BodyText(text: bodyText)
            NoteText
        }
    }
    
}


// MARK: - Components

extension FairDistribution {
    
    private var TitleText: some View {
        Text(titleText)
            .textCase(.uppercase)
            .foregroundColor(accentTextColor)
            .font(accentTitleFont)
    }
    
    private var SubtitleText: some View {
        Text(subtitleText)
            .textCase(.uppercase)
            .foregroundColor(mainTextColor)
            .font(accentSubtitleFont)
    }
    
    private var NoteText: some View {
        Text(noteText)
            .font(captionItalicFont)
            .foregroundColor(mainTextColor)
            .lineSpacing(bodyTextLineSpacing)
    }
    
}


extension FairDistribution {
    
    // MARK: - Private Methods
    
    private func createBodyText() -> String {
        return "There are no bonding curves here. Buying a Bored Ape costs 0.08 ETH. There are no price tiers; BAYC membership costs the same for everyone."
    }
    
    private func createNoteText() -> String {
        return "Note: Thirty apes are being withheld from the sale. These will be used for giveaways, puzzle rewards—and for the creators' BAYC memberships."
    }
    
}
