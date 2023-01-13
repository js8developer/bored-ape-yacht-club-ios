//
//  PagingTabBarItem.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct PagingTabBarItem: View {
    
    // MARK: - Public Properties
    
    @Binding var currentTab: Int
    
    let namespace: Namespace.ID
    var tabBarItemName: String
    var tab: Int
    
    
    // MARK: - Private Properties
    
    private let font: Font = .system(size: 15, weight: .heavy)
    private let textColor: Color = Theme.Colors.baycWhite
    private let underlineColor: Color = Theme.Colors.baycYellow
    private let underlineHeight: CGFloat = 2.0
    private var isSelectedTab: Bool { currentTab == tab }
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            setTabBarToCurrentItem()
        }){
            VStack {
                Spacer()
                // Tab Item Label
                TabItemTextView
                // Underline
                if isSelectedTab { YellowUnderlineView }
                else { NoUnderlineView }
            }
            .animation(.spring(), value: currentTab)
            .padding(.bottom, 8)
        }
        .buttonStyle(.plain)
    }

}


// MARK: - Components

extension PagingTabBarItem {
    
    private var TabItemTextView: some View {
        Text(tabBarItemName)
            .font(font)
            .foregroundColor(textColor)
    }
    
    private var YellowUnderlineView: some View {
        underlineColor
            .frame(height: underlineHeight)
            .matchedGeometryEffect(
                id: "underline",
                in: namespace,
                properties: .frame
            )
    }
    
    private var NoUnderlineView: some View {
        Color.clear.frame(height: underlineHeight)
    }
    
}


// MARK: - Private Methods

extension PagingTabBarItem {
    
    private func setTabBarToCurrentItem(){
        currentTab = tab
    }
    
}
