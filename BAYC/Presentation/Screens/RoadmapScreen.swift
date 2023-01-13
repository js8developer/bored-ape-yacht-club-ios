//
//  RoadmapScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct RoadmapScreen: View {
    
    // MARK: - View Models
    
    @StateObject private var viewModel: RoadmapScreenViewModel = RoadmapScreenViewModel()
    
    
    // MARK: - Private Properties
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
   
    private let timelineBarWidth: CGFloat = 2.0
    private let timelineBarHeight: CGFloat = 590.0
    private let timelineBarColor: Color = Theme.Colors.baycYellow.opacity(0.5)
    
    private let bodyFont: Font = Theme.Fonts.body
    
    private let subtitleTextColor: Color = Theme.Colors.baycWhite
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                VStack(alignment: .leading, spacing: sectionSpacing) {
                    TitleText(title: viewModel.titleText)
                    SubtitleText
                    VStack(alignment: .center) {
                        RoadmapList
                        ShirtOverlayView()
                    }
                }
                .padding()
                
                Spacer(minLength: Theme.Sizes.tabBarHeight)
            }
        }
    }
    
}


// MARK: - Components

extension RoadmapScreen {
    
    private var SubtitleText: some View {
        Text(viewModel.subtitleText)
            .font(bodyFont)
            .foregroundColor(subtitleTextColor)
            .lineSpacing(bodyTextLineSpacing)
    }
    
    private var RoadmapList: some View {
        ZStack {
            VerticalTimelineBar
            RoadmapRows
        }
    }
    
    private var RoadmapRows: some View {
        VStack {
            ForEach(viewModel.roadmapObjects){ (roadmapObject) in
                RoadmapObjectCell(roadmapObject: roadmapObject)
            }
        }
    }
    
    private var VerticalTimelineBar: some View {
        HStack {
            Rectangle()
                .fill(timelineBarColor)
                .frame(width: timelineBarWidth, height: timelineBarHeight)
            Spacer()
        }
        .padding(.leading)
    }
    
}
