//
//  ShirtOverlayView.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct ShirtOverlayView: View {
    
    // MARK: - Private Properties
    
    private let shirtHeight: CGFloat = Theme.Sizes.buttonWidth
    private var shirtWidth: CGFloat {
        // width: 720, height: 756 => ratio: 0.95238095238
        let ratio: CGFloat = 0.95238095238
        return shirtHeight * ratio
    }
    
    private var squareWidth: CGFloat { return shirtWidth - 32 }
    private var squareHeight: CGFloat { return squareWidth - 16 }
    private let squareBgColor: Color = Theme.Colors.baycYellow
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            ShirtSquareBgView
            TShirtView
        }
    }
    
}


// MARK: - Components

extension ShirtOverlayView {
    
    private var ShirtSquareBgView: some View {
        Rectangle()
            .fill(squareBgColor)
            .frame(width: squareWidth, height: squareHeight)
    }
    
    private var TShirtView: some View {
        Assets.shirt
            .resizable()
            .frame(width: shirtWidth, height: shirtHeight)
            .padding([.top, .leading])
    }
    
}
