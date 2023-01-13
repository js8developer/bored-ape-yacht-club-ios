//
//  EtherIcon.swift
//  BAYC
//
//  Created by Jason Schneider on 8/21/22.
//

import SwiftUI

struct EtherIcon: View {
    
    // MARK: - Private Properties
    
    private let iconSize: CGFloat = 20.0
    
    
    // MARK: - Private Properties
    
    var body: some View {
        Image("ether")
            .resizable()
            .frame(width: iconSize, height: iconSize)
    }
    
}
