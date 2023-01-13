//
//  WelcomeToTheClub.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct WelcomeToTheClub: View {
    
    // MARK: - Private Properties
    
    private let titleText: String = "Welcome to the club"
    private var bodyText: String { createBodyText() }
    private var clubObjects: [ClubObject] { createClubObjects() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    
    private let mainTextColor: Color = Theme.Colors.baycWhite
    
    private let titleFont: Font = Theme.Fonts.title
    private let bodyFont: Font = Theme.Fonts.body
    
    private let mysteryApeSize: CGFloat = Theme.Sizes.buttonWidth
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: sectionSpacing) {
            TitleText
            BodyText(text: bodyText)
            ClubObjectsScrollView
        }
    }
    
}


// MARK: - Components

extension WelcomeToTheClub {
    
    private var TitleText: some View {
        Text(titleText)
            .textCase(.uppercase)
            .font(titleFont)
            .foregroundColor(mainTextColor)
    }
    
    private var ClubObjectsScrollView: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(clubObjects){ (clubObject) in
                    ClubObjectCell(clubObject: clubObject)
                }
            }
        }
    }
    
}


// MARK: - Private Methods

extension WelcomeToTheClub {
 
    private func createBodyText() -> String {
        return "When you buy a Bored Ape, you’re not simply buying an avatar or a provably-rare piece of art. You are gaining membership access to a club whose benefits and offerings will increase over time. Your Bored Ape can serve as your digital identity, and open digital doors for you."
    }
    
    private func createClubObjects() -> [ClubObject] {
        return [
            ClubObject(image: "icon1", text: "10,000 Provably-rare Bored Ape tokens"),
            ClubObject(image: "icon2", text: "Fair Launch, fair distribution: All apes cost 0.08 ETH"),
            ClubObject(image: "icon3", text: "Ownership and commercial usage rights given to the consumer over their NFT"),
            ClubObject(image: "icon4", text: "The Bathroom: A member's-only graffiti board"),
            ClubObject(image: "icon5", text: "Gain additional benefits through roadmap activations"),
        ]
    }
    
}
