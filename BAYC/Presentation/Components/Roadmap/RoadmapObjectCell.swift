//
//  RoadmapObjectCell.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct RoadmapObjectCell: View {
    
    // MARK: - Public Properties
    
    let roadmapObject: RoadmapObject
    
    
    // MARK: - Private Properties
    
    private let percentTextColor: Color = Theme.Colors.baycYellow
    private let percentViewBgColor: Color = Theme.Colors.baycBlack
    private let bodyTextColor: Color = Theme.Colors.baycWhite
    
    private let accentSubtitleFont: Font = Theme.Fonts.subtitleItalic
    private let bodySmallFont: Font = Theme.Fonts.caption
    
    private let roadmapItemSpacing: CGFloat = 16
    private let roadmapTextSpacing: CGFloat = 2
    
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: roadmapItemSpacing) {
            PercentText
            RoadmapText
            Spacer()
        }
        .padding(.vertical)
    }
    
}


// MARK: - Components

extension RoadmapObjectCell {

    private var PercentText: some View {
        Text(roadmapObject.percent)
            .font(accentSubtitleFont)
            .foregroundColor(percentTextColor)
            // Requires black bg to create overlay effect over VerticalTimelineBar
            .background(percentViewBgColor)
    }
    
    private var RoadmapText: some View {
        Text(roadmapObject.text)
            .strikethrough()
            .font(bodySmallFont)
            .foregroundColor(bodyTextColor)
            .lineSpacing(roadmapTextSpacing)
    }
    
}
