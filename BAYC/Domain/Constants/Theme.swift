//
//  Theme.swift
//  BAYC
//
//  Created by Jason Schneider on 8/19/22.
//

import Foundation
import UIKit
import SwiftUI


enum Theme {
    
    enum Colors {
        static let baycYellow: Color = Color("bayc-yellow")
        static let baycBlack: Color = Color("bayc-black")
        static let baycWhite: Color = Color("bayc-white")
        static let baycBlackLight: Color = Color("bayc-black-light")
    }
    
    enum Fonts {
        // Title
        static let title: Font = Font.system(size: 24, weight: .heavy)
        static let titleItalic: Font = Font.system(size: 24, weight: .semibold).italic()
        static let titleItalicHeavy: Font = Font.system(size: 24, weight: .heavy).italic()
        // Subtitle
        static let subtitleItalic: Font = Font.system(size: 18, weight: .semibold).italic()
        // Body
        static let body: Font = Font.system(size: 18, weight: .regular)
        // Caption
        static let caption: Font = Font.system(size: 16, weight: .regular)
        static let captionMedium: Font = Font.system(size: 16, weight: .medium)
        static let captionItalic: Font = Font.system(size: 16, weight: .regular).italic()
        static let caption2Italic: Font = Font.system(size: 15, weight: .regular).italic()
        // Button
        static let buttonBold: Font = Font.system(size: 17, weight: .bold)
        static let buttonItalic: Font = Font.system(size: 17, weight: .regular).italic()
        // Navigation
        static let navigationIcon: Font = Font.system(size: 24, weight: .regular)
    }
    
    enum Sizes {
        // General
        static let fullWidth: CGFloat = UIScreen.main.bounds.width
        static let fullHeight: CGFloat = UIScreen.main.bounds.height
        // TabBar
        static let tabBarHeight: CGFloat = 44
        // Buttons
        static let buttonWidth: CGFloat = fullWidth - 32
        static let buttonHeight: CGFloat = 50
        static let buttonCornerRadius: CGFloat = 8
        // Photos
        static let squarePhoto: CGFloat = (fullWidth / 2) - 24
        // Icons
        static let statIcon: CGFloat = 30
        static let socialIcon: CGFloat = 36
        // Footer
        static let footer: CGFloat = 200
    }
    
    enum Spacing {
        static let tab: CGFloat = 20
        static let section: CGFloat = 24
        static let bodyTextLine: CGFloat = 4
        static let imageGrid: CGFloat = 16
    }
    
}



