//
//  ClubObjectCell.swift
//  BAYC
//
//  Created by Jason Schneider on 1/9/23.
//

import SwiftUI

struct ClubObjectCell: View {
    
    // MARK: - Public Properties
    
    var clubObject: ClubObject
    
    
    // MARK: - Private Properties
    
    private let cellWidth: CGFloat = 120
    private let imageWidth: CGFloat = 100
    private let imageHeight: CGFloat = 120
    
    private let textLineSpacing: CGFloat = 2
    private let imageTextSpacing: CGFloat = 16
    
    private let mainTextColor: Color = Theme.Colors.baycWhite
    
    private let captionFont: Font = Theme.Fonts.caption
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: imageTextSpacing) {
            ClubObjectImage
            ClubObjectText
            Spacer()
        }
        .frame(width: cellWidth)
        .padding()
    }
    
}


// MARK: - Components

extension ClubObjectCell {
   
    private var ClubObjectImage: some View {
        Image(clubObject.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: imageWidth, height: imageHeight)
    }
    
    private var ClubObjectText: some View {
        Text(clubObject.text)
            .font(captionFont)
            .foregroundColor(mainTextColor)
            .multilineTextAlignment(.center)
            .lineSpacing(textLineSpacing)
    }
    
}

