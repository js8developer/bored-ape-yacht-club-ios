//
//  PagingTabBar.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct PagingTabBar: View {
    
    // MARK: - Public Properties
    
    let tabBarOptions: [String]
    
    @Binding var currentTab: Int
    @Namespace var namespace
    
    
    // MARK: - Private Properties
    
    private let tabSpacing: CGFloat = Theme.Spacing.tab
    private let tabBarHeight: CGFloat = Theme.Sizes.tabBarHeight
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: tabSpacing){
                ForEach(
                    Array(
                        zip(tabBarOptions.indices, tabBarOptions)
                    ),
                    id: \.0
                )
                { (index, name) in
                        PagingTabBarItem(
                            currentTab: $currentTab,
                            namespace: namespace.self,
                            tabBarItemName: name,
                            tab: index
                        )
                    }
            }
            .padding(.horizontal)
        }
        .frame(height: tabBarHeight)
    }
    
}
