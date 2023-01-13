//
//  SocialsBar.swift
//  BAYC
//
//  Created by Jason Schneider on 8/21/22.
//

import SwiftUI

struct SocialsBar: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Private Properties
    
    private let iconSize: CGFloat = Theme.Sizes.socialIcon
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: sectionSpacing) {
            YouTube
            Instagram
            Discord
            Twitter
        }
    }
    
}


// MARK: - Components

extension SocialsBar {
    
    private var YouTube: some View {
        SocialButton(icon: SocialSiteType.youtube.icon, url: SocialSiteType.youtube.websiteUrl, size: iconSize)
            .padding(.top, 2)
    }
    
    private var Instagram: some View {
        SocialButton(icon: SocialSiteType.instagram.icon, url: SocialSiteType.instagram.websiteUrl, size: iconSize)
    }
    
    private var Discord: some View {
        SocialButton(icon: SocialSiteType.discord.icon, url: SocialSiteType.discord.websiteUrl, size: iconSize  + 2)
            .padding(.top, 2)
    }
    
    private var Twitter: some View {
        SocialButton(icon: SocialSiteType.twitter.icon, url: SocialSiteType.twitter.websiteUrl, size: iconSize)
    }
    
}
