//
//  TitleText.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct TitleText: View {
    
    // MARK: - Public Properties
    
    let title: String
    
    
    // MARK: - Private Properties
    
    private let font: Font = Theme.Fonts.title
    private let textColor: Color = Theme.Colors.baycWhite
    
    
    // MARK: - Body
    
    var body: some View {
        Text(title)
            .font(font)
            .textCase(.uppercase)
            .foregroundColor(textColor)
    }
    
}
