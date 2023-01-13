//
//  TeamMemberRow.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct TeamMemberRow: View {
    
    // MARK: - Public Properties
    
    let teamMember: TeamMember
    
    private let nameTextColor: Color = Theme.Colors.baycYellow
    private let mainTextColor: Color = Theme.Colors.baycWhite
    
    private let nameFont: Font = Theme.Fonts.buttonBold
    private let detailsFont: Font = Theme.Fonts.buttonItalic
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                MemberNameText
                MemberDetailsText
            }
            Spacer()
        }
    }
    
}


// MARK: - Components

extension TeamMemberRow {

    private var MemberNameText: some View {
        Text(teamMember.name)
            .font(nameFont)
            .foregroundColor(nameTextColor)
    }
    
    private var MemberDetailsText: some View {
        Text(teamMember.text)
            .font(detailsFont)
            .foregroundColor(mainTextColor)
    }
    
}
