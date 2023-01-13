//
//  MainPagerViewModel.swift
//  BAYC
//
//  Created by Jason Schneider on 1/9/23.
//

import Foundation

class MainPagerViewModel: ObservableObject {
    
    // MARK: - Public Properties
    
    @Published var currentTab: Int = 0
    @Published var showActivitySheet: Bool = false
    
    @Published var tabBarOptions: [String] = [
        "HOME",
        "ROADMAP",
        "TEAM",
        "GALLERY"
    ]
    
}
