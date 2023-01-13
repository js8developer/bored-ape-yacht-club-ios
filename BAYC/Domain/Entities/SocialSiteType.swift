//
//  SocialSiteType.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import Foundation

enum SocialSiteType {
    
    case youtube, instagram, discord, twitter
    
    var websiteUrl: String {
        switch self {
        case .youtube: return "https://www.youtube.com/channel/UCB6R9NAjkgxQi_QEkc4O25Q"
        case .instagram: return "https://www.instagram.com/boredapeyachtclub/"
        case .discord: return "https://discord.com/invite/3P5K3dzgdB"
        case .twitter: return "https://twitter.com/BoredApeYC"
        }
    }
    
    var icon: String {
        switch self {
        case .youtube: return "youtube"
        case .instagram: return "instagram"
        case .discord: return "discord"
        case .twitter: return "twitter"
        }
    }
    
}
