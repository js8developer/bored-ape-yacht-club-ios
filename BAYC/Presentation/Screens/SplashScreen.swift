//
//  SplashScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 8/21/22.
//

import SwiftUI

struct SplashScreen: View {
    
    // MARK: - Private Properties
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    private var scalingAnimationDuration: CGFloat = 0.5
    private var scaledSize: CGFloat = 1.2
    private var scaledOpacity: CGFloat = 1.0
    
    private var logoImage: Image = Assets.baycSplash
    private var logoSize: CGFloat = 200
    
    private var splashScreenDuration: CGFloat = 2.0
    
    
    // MARK: - Body
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            BAYCLogoAnimatedView
        }
    }
    
}


// MARK: - Components

extension SplashScreen {
    
    private var LogoImage: some View {
        logoImage
            .resizable()
            .frame(width: logoSize, height: logoSize)
    }
    
    private var BAYCLogoAnimatedView: some View {
        VStack {
            VStack {
                LogoImage
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                animateSplashScreen()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + splashScreenDuration) {
                removeSplashScreenWithAnimation()
            }
        }
    }
    
}


// MARK: - Private Methods

extension SplashScreen {
    
    private func animateSplashScreen(){
        withAnimation(.easeIn(duration: scalingAnimationDuration)) {
            // Animate Scale from 0.8x to 1.2x
            self.size = scaledSize
            // Animate Opacity from 0.5 to 1.0
            self.opacity = scaledOpacity
        }
    }
    
    private func removeSplashScreenWithAnimation(){
        withAnimation {
            self.isActive = true
        }
    }
    
}
