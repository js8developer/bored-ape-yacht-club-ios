//
//  StatsFilterGroup.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct StatsFilterGroup: View {
    
    // MARK: - Public Properties
    
    @ObservedObject var viewModel: ActivityScreenViewModel
    
    
    // MARK: - Private Properties
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    private let pillSpacing: CGFloat = 16.0
    private let pillTextColor: Color = Theme.Colors.baycYellow
    
    private let accentSubtitleFont: Font = Theme.Fonts.subtitleItalic
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: sectionSpacing) {
            TimeframeDisplayText
            FilterPills
        }
    }
    
}


// MARK: - Components

extension StatsFilterGroup {

    var TimeframeDisplayText: some View {
        HStack {
            Text(viewModel.timeframeDisplayText)
                .font(accentSubtitleFont)
                .foregroundColor(pillTextColor)
            Spacer()
        }
    }
    
    var FilterPills: some View {
        HStack(spacing: pillSpacing) {
            StatsFilterPill(viewModel: viewModel, index: 0, text: "24h")
            StatsFilterPill(viewModel: viewModel, index: 1, text: "7d")
            StatsFilterPill(viewModel: viewModel, index: 2, text: "30d")
            Spacer()
        }
    }
}



