//
//  SocialButton.swift
//  BAYC
//
//  Created by Jason Schneider on 1/11/23.
//

import SwiftUI

struct SocialButton: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Public Properties
    let icon: String
    let url: String
    let size: CGFloat
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            openURL(URL(string: url)!)
        }){
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
        }
    }
    
}
