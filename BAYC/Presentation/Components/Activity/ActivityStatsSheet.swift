//
//  ActivityStatsSheet.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI
import Foundation

struct ActivityStatsSheet: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - View Models
    
    @ObservedObject var viewModel: ActivityScreenViewModel
    
    
    // MARK: - Private Properties
    
    private let rowSpacing: CGFloat = 8
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    private let mainTextColor: Color = Theme.Colors.baycWhite
    private let sheetBgColor: Color = Theme.Colors.baycBlackLight
    
    private let cardCornerRadius: CGFloat = 10
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: sectionSpacing) {
            TitleView
            CollectionStatsRows
            Divider()
            StatsFilterGroup(viewModel: viewModel)
            MarketStatsRows
            ViewActivityOnOpenSeaButton
        }
        .padding()
        .foregroundColor(mainTextColor)
        .frame(width: Theme.Sizes.fullWidth)
        .background(sheetBgColor)
        .cornerRadius(cardCornerRadius)
    }
    
}


// MARK: - Components

extension ActivityStatsSheet {

    var TitleView: some View {
        HStack {
            TitleText(title: viewModel.sheetTitleText)
            Spacer()
        }
        .padding(.top)
    }
    
    var CollectionStatsRows: some View {
        let collectionStats = viewModel.collectionStats
        
        return VStack(spacing: rowSpacing) {
            ActivityRow(iconName: "square.grid.2x2.fill", title: "Items", value: collectionStats.count)
            ActivityRow(iconName: "person.2.fill", title: "Owners", value: collectionStats.num_owners)
            ActivityRow(iconName: "chart.pie.fill", title: "Market Cap", value: collectionStats.market_cap, rowType: .ether)
            ActivityRow(iconName: "chart.bar.xaxis", title: "Total Volume", value: collectionStats.total_volume, rowType: .ether)
            ActivityRow(iconName: "tag.fill", title: "Floor Price", value: collectionStats.floor_price, rowType: .ether)
        }
    }

    var MarketStatsRows: some View {
        let timeframeStats = viewModel.timeframeStats
        
        return VStack(spacing: rowSpacing) {
            ActivityRow(iconName: "chart.bar.xaxis", title: "Volume", value: timeframeStats.volume, rowType: .ether)
            ActivityRow(iconName: "waveform.path.ecg", title: "Change", value: timeframeStats.percentChange, rowType: .percent)
            ActivityRow(iconName: "cart", title: "Sales", value: timeframeStats.sales)
            ActivityRow(iconName: "tag.fill", title: "Average Price", value: timeframeStats.averagePrice, rowType: .ether)
        }
    }
    
    var ViewActivityOnOpenSeaButton: some View {
        YellowButton(text: "View Activity on OpenSea", url: Endpoints.OpenSea.activity)
    }
    
}

