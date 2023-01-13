//
//  Endpoints.swift
//  BAYC
//
//  Created by Jason Schneider on 1/11/23.
//

import Foundation

enum Endpoints {
    
    static let etherscan: String = "https://etherscan.io/address/\(ContractAddresses.bayc)"
    static let nftExpo: String = "https://nftexp.io/explore/bored-ape-yacht-club"
    static let rarity: String = "https://rarity.tools/boredapeyachtclub"
    
    enum BAYC {
        static let provenance: String = "https://boredapeyachtclub.com/#/provenance"
        static let bathroom: String = "https://boredapeyachtclub.com/#/login-bathroom"
    }
    
    enum OpenSea {
        static let collection: String = "https://opensea.io/collection/boredapeyachtclub"
        static let activity: String = "https://opensea.io/collection/boredapeyachtclub/activity"
        static let statsData: String = "https://api.opensea.io/api/v1/collection/boredapeyachtclub/stats"
    }
    
}
