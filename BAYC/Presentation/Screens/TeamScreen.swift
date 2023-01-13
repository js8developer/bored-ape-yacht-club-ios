//
//  TeamScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct TeamScreen: View {
    
    // MARK: - View Models
    
    @StateObject private var viewModel: TeamScreenViewModel = TeamScreenViewModel()
    
    
    // MARK: - Private Properties
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    private let apeImageSpacing: CGFloat = Theme.Spacing.imageGrid
    private let bodyTextLineSpacing: CGFloat = Theme.Spacing.bodyTextLine
    
    private let subtitleTextColor: Color = Theme.Colors.baycWhite
    private let bodyFont: Font = Theme.Fonts.body
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                VStack(spacing: sectionSpacing) {
                    VStack(alignment: .leading, spacing: sectionSpacing) {
                        TitleText(title: viewModel.titleText)
                        SubtitleText
                    }
                    TeamMembersRows
                    TeamApes2x2
                    Footer()
                }
                .padding()
                
                Spacer(minLength: Theme.Sizes.tabBarHeight)
            }
        }
    }
    
}


// MARK: - Components

extension TeamScreen {
    
    private var SubtitleText: some View {
        Text(viewModel.subtitleText)
            .font(bodyFont)
            .foregroundColor(subtitleTextColor)
            .lineSpacing(bodyTextLineSpacing)
    }
    
    private var TeamMembersRows: some View {
        VStack {
            ForEach(viewModel.teamMembers){ (teamMember) in
                TeamMemberRow(teamMember: teamMember)
                    .padding(.vertical, 8)
            }
        }
    }
    
    private var TeamApes2x2: some View {
        VStack(spacing: apeImageSpacing)  {
            HStack(spacing: apeImageSpacing) {
                ApePhotoSquare(apeImage: Assets.garga)
                ApePhotoSquare(apeImage: Assets.gordy)
            }
            HStack(spacing: apeImageSpacing)  {
                ApePhotoSquare(apeImage: Assets.tomato)
                ApePhotoSquare(apeImage: Assets.sass)
            }
        }
    }

}





