//
//  Footer.swift
//  BAYC
//
//  Created by Jason Schneider on 1/9/23.
//

import SwiftUI

struct Footer: View {
    
    // MARK: - Private Properties
    
    private let footerSize: CGFloat = Theme.Sizes.footer
    
    
    // MARK: - Body
    
    var body: some View {
        Assets.baycFooter
            .resizable()
            .frame(width: footerSize, height: footerSize)
    }
    
}
