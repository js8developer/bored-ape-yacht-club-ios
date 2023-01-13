//
//  HomeScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct HomeScreen: View {
    
    // MARK: - Private Properties
    
    private let sectionSpacing: CGFloat = Theme.Spacing.section
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                HeaderImage
                
                VStack(spacing: sectionSpacing) {
                    WelcomeSection()
                    FairDistribution()
                }
                .padding()
                
                BuyAnApe()
                
                VStack(spacing: sectionSpacing) {
                    TheSpecs()
                    Divider()
                    WelcomeToTheClub()
                    Divider()
                    TheBathroom()
                    Divider()
                    CommunityTools()
                    Divider()
                    VerifiedSmartContractAddress()
                }
                .padding()
                
                Footer()
                
                SocialsBar()
                    .padding()
                
                Spacer(minLength: Theme.Sizes.tabBarHeight)
            }
        }
    }
    
}


// MARK: - Components

extension HomeScreen {
    
    private var HeaderImage: some View {
        let headerWidth: CGFloat = Theme.Sizes.fullWidth
        // width: 1600 height: 1000 => aspect ratio: 0.625
        let ratio: CGFloat = 0.625
        let headerHeight: CGFloat = headerWidth * ratio
            
        return Assets.baycHeader
            .resizable()
            .frame(width: headerWidth, height: headerHeight)
    }

}
