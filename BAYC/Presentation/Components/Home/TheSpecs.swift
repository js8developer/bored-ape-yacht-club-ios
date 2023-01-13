//
//  TheSpecs.swift
//  BAYC
//
//  Created by Jason Schneider on 8/19/22.
//

import SwiftUI


struct TheSpecs_Previews: PreviewProvider {
    static var previews: some View {
        TheSpecs().background(Theme.Colors.baycBlack)
    }
}


struct TheSpecs: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Private Properties
    
    private let titleText: String = "The Specs"
    private var bodyText: String { createBodyText() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    
    private let textColor: Color = Theme.Colors.baycWhite
    private let bodyFont: Font = Theme.Fonts.body
    
    private let mysteryApeSize: CGFloat = 300
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: sectionSpacing) {
            VStack(alignment: .leading, spacing: sectionSpacing) {
                TitleText(title: titleText)
                BodyText(text: bodyText)
                ProvenanceButton
                BathroomButton
            }
            MysteryApeImage
        }
    }
    
}


// MARK: - Components

extension TheSpecs {
    
    private var ProvenanceButton: some View {
        AccentButton(text: "View Record and Proof", url: Endpoints.BAYC.provenance)
    }
    
    private var BathroomButton: some View {
        AccentButton(text: "Take me to THE BATHROOM", url: Endpoints.BAYC.bathroom)
    }
    
    private var MysteryApeImage: some View {
        Assets.mysteryApe
            .resizable()
            .frame(width: mysteryApeSize, height: mysteryApeSize)
    }
    
}


// MARK: - Private Methods

extension TheSpecs {
 
    private func createBodyText() -> String {
        return """
    Each Bored Ape is unique and programmatically generated from over 170 possible traits, including expression, headwear, clothing, and more. All apes are dope, but some are rarer than others.
    
    The apes are stored as ERC-721 tokens on the Ethereum blockchain and hosted on IPFS. (See Record and Proof.) Purchasing an ape costs 0.08 ETH.
    
    To access members-only areas such as THE BATHROOM, Apeholders will need to be signed into their Metamask Wallet.
    """
    }
    
}
