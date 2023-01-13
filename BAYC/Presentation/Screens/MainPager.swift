//
//  MainPager.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct MainPager: View {
    
    // MARK: - View Models
    
    @StateObject var viewModel: MainPagerViewModel = MainPagerViewModel()
    
    
    // MARK: - Private Properties
    
    private let navBarLogoWidth: CGFloat = (Theme.Sizes.fullWidth / 2) - 32
    private var navBarLogoHeight: CGFloat {
        let ratio: CGFloat = 0.386
        return navBarLogoWidth * ratio
    }
    
    private let iconColor: Color = Theme.Colors.baycYellow
    private let iconFont: Font = Theme.Fonts.navigationIcon
    
    private let tabBarHeight: CGFloat = Theme.Sizes.tabBarHeight
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            NavBarView
            PagingView
        }
        .sheet(isPresented: $viewModel.showActivitySheet) {
            ActivityScreen()
        }
    }
    
}


// MARK: - Components

extension MainPager {
    
    private var NavBarView: some View {
        ZStack {
            BAYCLLogoView
            HStack {
                Spacer()
                ActivityButton
            }
            .padding(.horizontal)
        }
    }
    
    private var BAYCLLogoView: some View {
        Assets.baycLogo
            .resizable()
            .frame(width: navBarLogoWidth, height: navBarLogoHeight)
    }
    
    private var ActivityButton: some View {
        Button(action: {
            viewModel.showActivitySheet = true
        }){
            Image(systemName: "waveform.path.ecg")
                .font(iconFont)
                .foregroundColor(iconColor)
                
        }
    }

    private var PagingView: some View {
        ZStack(alignment: .top) {
            ScreenPagingTabView
            PagingTabBar(tabBarOptions: viewModel.tabBarOptions, currentTab: $viewModel.currentTab)
        }
    }
    
    private var ScreenPagingTabView: some View {
        TabView(selection: $viewModel.currentTab){
            HomeScreen()
                .tag(0)
                .offset(y: tabBarHeight)
            RoadmapScreen()
                .tag(1)
                .offset(y: tabBarHeight)
            TeamScreen()
                .tag(2)
                .offset(y: tabBarHeight)
            GalleryScreen()
                .tag(3)
                .offset(y: tabBarHeight)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top)
    }
    
}
