//
//  BuyAnApe.swift
//  BAYC
//
//  Created by Jason Schneider on 8/19/22.
//

import SwiftUI

struct BuyAnApe: View {
    
    // MARK: - Private Properties
    
    private let titleText: String = "Buy an Ape"
    private let bodyText: String = "The initial sale has sold out. To get your Bored Ape, check out the collection on OpenSea."
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    private let heavyTitleFont: Font = Theme.Fonts.titleItalicHeavy
    private let bodyFont: Font = Theme.Fonts.body

    private let textColor: Color = Theme.Colors.baycBlack
    private let viewBgColor: Color = Theme.Colors.baycYellow
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: sectionSpacing) {
            TitleText
            BodyText(text: bodyText, textColor: textColor)
            BuyApeButton
        }
        .padding()
        .frame(width: Theme.Sizes.fullWidth)
        .background(viewBgColor)
    }
    
}


// MARK: - Components

extension BuyAnApe {
    
    private var TitleText: some View {
        Text(titleText)
            .textCase(.uppercase)
            .font(heavyTitleFont)
            .foregroundColor(textColor)
    }
    
    private var BuyApeButton: some View {
        BlackButton(text: "Buy an Ape on OpenSea", url: Endpoints.OpenSea.collection)
    }
    
}
