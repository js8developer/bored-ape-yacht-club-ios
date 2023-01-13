//
//  BodyText.swift
//  BAYC
//
//  Created by Jason Schneider on 1/11/23.
//

import SwiftUI

struct BodyText: View {
    
    // MARK: - Public Properties
    
    let text: String
    let textColor: Color
    
    
    // MARK: - Init
    
    init(text: String, textColor: Color = Color.white) {
        self.text = text
        self.textColor = textColor
    }
    
    
    // MARK: - Body
    
    var body: some View {
        Text(text)
            .font(Theme.Fonts.body)
            .foregroundColor(textColor)
            .lineSpacing(Theme.Spacing.bodyTextLine)
    }
    
}
