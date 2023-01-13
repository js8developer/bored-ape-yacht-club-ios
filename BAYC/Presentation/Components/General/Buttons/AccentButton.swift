//
//  AccentButton.swift
//  BAYC
//
//  Created by Jason Schneider on 1/9/23.
//

import SwiftUI

struct AccentButton: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    // MARK: - Public Properties
    
    var text: String
    var url: String
    
    
    // MARK: - Private Properties
    
    private let textColor: Color = Theme.Colors.baycYellow
    private let bgColor: Color = Theme.Colors.baycBlack
    private let font: Font = Theme.Fonts.buttonBold
    
    private let width: CGFloat = Theme.Sizes.buttonWidth
    private let height: CGFloat = Theme.Sizes.buttonHeight
    private let cornerRadius: CGFloat = Theme.Sizes.buttonCornerRadius
    private let borderWidth: CGFloat = 1.5
    
    
    // MARK: - Body
    
    var body: some View {
        
        Button(action: {
            openURL(URL(string: url)!)
        }){
            Text(text)
                .font(font)
                .foregroundColor(textColor)
                .padding()
                .frame(width: width, height: height)
                .background(bgColor)
                .cornerRadius(cornerRadius)
        }
        .overlay(
            ButtonBorder
        )
    }
    
}


// MARK: - Components

extension AccentButton {
    
    var ButtonBorder: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(textColor, lineWidth: borderWidth)
    }
    
}
