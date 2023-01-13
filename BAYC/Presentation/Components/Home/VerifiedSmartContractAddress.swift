//
//  VerifiedSmartContractAddress.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import SwiftUI

struct VerifiedSmartContractAddress: View {
    
    // MARK: - Environment
    
    @Environment(\.openURL) var openURL
    
    
    // MARK: - Private Properties
    
    private let labelText = "Verified Smart Contract Address:"
    
    private let labelTextColor: Color = Theme.Colors.baycWhite
    private let labelFont: Font = Theme.Fonts.buttonBold
    
    private let contractAddressTextColor: Color = Theme.Colors.baycYellow
    private let contractAddressFont: Font = Theme.Fonts.caption2Italic
    
    private let spacing: CGFloat = 8
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: spacing) {
            LabelText
            ContractAddressLinkText
        }
    }
    
}


// MARK: - Components

extension VerifiedSmartContractAddress {
    
    private var LabelText: some View {
        Text(labelText)
            .textCase(.uppercase)
            .foregroundColor(labelTextColor)
            .font(labelFont)
    }
    
    private var ContractAddressLinkText: some View {
        Button(action: {
            openURL(URL(string: Endpoints.etherscan)!)
        }){
            Text(ContractAddresses.bayc)
                .foregroundColor(contractAddressTextColor)
                .font(contractAddressFont)
                .underline(true, color: contractAddressTextColor)
        }
    }
    
}
