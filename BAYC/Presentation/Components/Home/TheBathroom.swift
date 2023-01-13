//
//  TheBathroom.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct TheBathroom: View {
    
    // MARK: - Private Properties
    
    private let titleText: String = "The Bathroom"
    private var bodyText: String { createBodyText() }
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    
    private let textColor: Color = Theme.Colors.baycWhite
    
    private let titleFont: Font = Theme.Fonts.title
    private let bodyFont: Font = Theme.Fonts.body
    
    private let toiletHeight: CGFloat = 200
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: sectionSpacing) {
            VStack(alignment: .leading, spacing: sectionSpacing) {
                TitleText(title: titleText)
                BodyText(text: bodyText)
            }
            ToiletImage
        }
    }
    
}


// MARK: - Components

extension TheBathroom {
    
    private var ToiletImage: some View {
        // width: 255, height: 470 => ratio: 0.54255319148
        let ratio: CGFloat = 0.54255319148
        let toiletWidth: CGFloat = toiletHeight * ratio
        
        return Assets.toilet
            .resizable()
            .frame(width: toiletWidth, height: toiletHeight)
    }
    
}


// MARK: - Private Methods

extension TheBathroom {
        
    func createBodyText() -> String {
        return """
    The BAYC Bathroom will become operational once the presale period is over. It contains a canvas accessible only to wallets containing at least one ape. Like any good dive bar bathroom, this is the place to draw, scrawl, or write expletives.
    
    Each ape-holder will be able to paint a pixel on the bathroom wall every fifteen minutes. Think of it as a collaborative art experiment for the cryptosphere. A members-only canvas for the discerning minds of crypto twitter.
    
    We're pretty sure it's going to be full of dicks.
    """
    }
    
}
