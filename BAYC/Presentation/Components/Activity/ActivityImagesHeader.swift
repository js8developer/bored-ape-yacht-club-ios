//
//  ActivityImagesHeader.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI
import Foundation

struct ActivityImagesHeader: View {
    
    // MARK: - Private Properties
    
    private let logoWidth: CGFloat = Theme.Sizes.fullWidth / 2
    private var logoHeight: CGFloat {
        let ratio: CGFloat = 0.386
        return logoWidth * ratio
    }
    
    private let apeImageWidth: CGFloat = 240
    private var apeImageHeight: CGFloat {
        let ratio: CGFloat = 0.79316547
        return apeImageWidth * ratio
    }
    
    private let baycLogoXOffset: CGFloat = 40.0
    private let apeImageXOffset: CGFloat = 23.0
    
    private let headerBgColor: Color = Theme.Colors.baycBlack
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            LogoImageView
            Spacer()
            KodaHoldingApeImageView
        }
        .background(headerBgColor)
        .padding(.bottom)
    }
    
}


// MARK: - Components

extension ActivityImagesHeader {

    var LogoImageView: some View {
        Assets.baycLogo
            .resizable()
            .frame(width: logoWidth, height: logoHeight)
            .offset(x: baycLogoXOffset)
    }
    
    var KodaHoldingApeImageView: some View {
        Assets.kodaHoldingApe
                .resizable()
                .frame(width: apeImageWidth, height: apeImageHeight)
                .offset(x: apeImageXOffset)
    }

}
