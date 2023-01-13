//
//  StatsFilterPill.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct StatsFilterPill: View {
    
    // MARK: - View Models
    
    @ObservedObject var viewModel: ActivityScreenViewModel
    
    
    // MARK: - Pubic Properties
    
    let index: Int
    let text: String
    
    
    // MARK: - Private Properties
    
    private var isSelectedPill: Bool { viewModel.selectedIndex == index }
    
    private let font: Font = .system(size: 15, weight: .bold)
    private let height: CGFloat = 30.0
    
    private var foregroundColor: Color { isSelectedPill ? Theme.Colors.baycBlack : Theme.Colors.baycWhite }
    private var bgColor: Color { isSelectedPill ? Theme.Colors.baycYellow : Color.clear }
    
    private var borderWidth: CGFloat { isSelectedPill ? 0 : 1 }
    private let borderColor: Color = .gray
    private var borderCornerRadius: CGFloat { height / 2 }
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            viewModel.selectedIndex = index
        }){
            Pill
        }
    }
    
}


// MARK: - Components

extension StatsFilterPill {

    var Pill: some View {
        Text(text)
            .font(font)
            .padding(.horizontal)
            .frame(height: height)
            .foregroundColor(foregroundColor)
            .background(bgColor)
            .clipShape(Capsule())
            .overlay(
                PillBorder
            )
    }
    
    var PillBorder: some View {
        RoundedRectangle(cornerRadius: borderCornerRadius)
            .stroke(lineWidth: borderWidth)
            .foregroundColor(borderColor)
    }
    
}
