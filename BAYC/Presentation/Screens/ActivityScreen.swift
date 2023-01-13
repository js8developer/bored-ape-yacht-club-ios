//
//  ActivityScreen.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import SwiftUI

struct ActivityScreen: View {
    
    // MARK: - ViewModels
    
    @StateObject private var viewModel = ActivityScreenViewModel()
    
    
    // MARK: - Private Properties
    
    private let sheetYOffset: CGFloat = -30.0
    private let sheetBackgroundColor: Color = Theme.Colors.baycBlackLight
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    ActivityImagesHeader()
                        .edgesIgnoringSafeArea(.top)
                    
                    ActivityStatsSheet(viewModel: viewModel)
                        .offset(y: sheetYOffset)
                }
            }
        }
        .background(sheetBackgroundColor)
    }
    
}

