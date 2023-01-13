//
//  ActivityRow.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI


struct ActivityRow: View {
    
    // MARK: - Public Properties
    
    let iconName: String
    let title: String
    let value: Any
    var rowType: ActivityRowType = .base
    
    
    // MARK: - Private Properties
    
    private let rowFont: Font = Theme.Fonts.captionMedium
    
    private let statIconSize: CGFloat = Theme.Sizes.statIcon
    private let iconColor: Color = Theme.Colors.baycYellow
    
    private let mainTextColor: Color = Theme.Colors.baycWhite
    
    private let horizontalSpacing: CGFloat = 16.0
    
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            RowIcon
            RowTitle
            Spacer()
            switch rowType {
            case .base: BaseDisplay
            case .ether: EtherDisplay
            case .percent: PercentDisplay
            }
        }
        .padding(.vertical, 8)
    }
    
}


// MARK: - Components

extension ActivityRow {

    var RowIcon: some View {
        Image(systemName: iconName)
            .foregroundColor(iconColor)
            .frame(width: statIconSize, height: statIconSize)
    }
    
    var RowTitle: some View {
        Text(title)
            .foregroundColor(mainTextColor)
            .font(rowFont)
    }
    
    var BaseDisplay: some View {
        Text("\(value as! Int)")
            .foregroundColor(mainTextColor)
            .font(rowFont)
    }
    
    var EtherDisplay: some View {
        let twoDecimalsFormat: String = "%.2f"
        
        return HStack {
            EtherIcon()
            
            Text("\(value as! Double, specifier: twoDecimalsFormat)")
                .foregroundColor(mainTextColor)
                .font(rowFont)
        }
    }
    
    var PercentDisplay: some View {
        let valueAsDouble: Double = (value as! Double)
        let percentValue: Double = valueAsDouble * 100
        let percentTextColor: Color = valueAsDouble > 0 ? .green : .red
        let twoDecimalsFormat: String = "%.2f"
        
        return Text("\(percentValue, specifier: twoDecimalsFormat)%")
            .foregroundColor(percentTextColor)
            .font(rowFont)
    }
    
}
