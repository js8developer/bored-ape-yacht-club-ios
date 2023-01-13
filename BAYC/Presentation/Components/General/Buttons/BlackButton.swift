//
//  BlackButton.swift
//  BAYC
//
//  Created by Jason Schneider on 1/11/23.
//

import SwiftUI

struct BlackButton: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Public Properties
    
    let text: String
    let url: String
    
    
    // MARK: - Private Properties
    
    private let buttonFont: Font = Theme.Fonts.buttonBold
    private let buttonTextColor: Color = Theme.Colors.baycYellow
    private let buttonBgColor: Color = Theme.Colors.baycBlack
    private let buttonWidth: CGFloat = Theme.Sizes.buttonWidth
    private let buttonHeight: CGFloat = Theme.Sizes.buttonHeight
    private let buttonCornerRadius: CGFloat = Theme.Sizes.buttonCornerRadius
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            openURL(URL(string: url)!)
        }){
            Text(text)
                .textCase(.uppercase)
                .font(buttonFont)
                .foregroundColor(buttonTextColor)
                .padding()
                .frame(width: buttonWidth, height: buttonHeight)
                .background(buttonBgColor)
                .cornerRadius(buttonCornerRadius)
        }
    }
    
}

