//
//  YellowButton.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct YellowButton: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Public Properties
    
    let text: String
    let url: String
    
    
    // MARK: - Private Properties
    
    private let font: Font = Theme.Fonts.buttonBold
    
    private let textColor: Color = Theme.Colors.baycBlack
    private let bgColor: Color = Theme.Colors.baycYellow
    
    private let width: CGFloat = Theme.Sizes.buttonWidth
    private let height: CGFloat = Theme.Sizes.buttonHeight
    private let cornerRadius: CGFloat = Theme.Sizes.buttonCornerRadius
    
    
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
    }
    
}
