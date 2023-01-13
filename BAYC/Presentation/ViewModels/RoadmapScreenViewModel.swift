//
//  RoadmapScreenViewModel.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class RoadmapScreenViewModel: ObservableObject {
    
    // MARK: - Public Properties
    
    let titleText: String = "Roadmap Activations"
    
    @Published var subtitleText: String = ""
    @Published var roadmapObjects: [RoadmapObject] = []

    
    // MARK: - Init
    
    init() {
        self.subtitleText = createSubtitleText()
        self.roadmapObjects = createRoadmapObjects()
    }
    
}


// MARK: - Private Methods

extension RoadmapScreenViewModel {
    
    private func createSubtitleText() -> String {
        return """
        We’re in this for the long haul.
        
        We’ve set up some goalposts for ourselves. Once we hit a target sell through percentage, we will begin to work on realizing the stated goal.
        """
    }
    
    private func createRoadmapObjects() -> [RoadmapObject] {
        return [
            RoadmapObject(percent: "10%", text: "We pay back our moms."),
            RoadmapObject(percent: "20%", text: "We release the Caged Apes. 5 Caged Apes (tokens held back from the sale) are airdropped to random Apeholders."),
            RoadmapObject(percent: "40%", text: "BAYC gets its own YouTube channel, BAYC LoFi Radio - Beats to Ape into Shitcoins To."),
            RoadmapObject(percent: "60%", text: "Member-Exclusive BAYC Merch Store gets unlocked, featuring Limited Edition tees, hoodies, and other goodies."),
            RoadmapObject(percent: "80%", text: "The clubhouse image becomes interactive and the Mysterious Note becomes legible, beginning a treasure hunt. The first to solve the mystery will be rewarded 5 ETH and a Bored Ape."),
            RoadmapObject(percent: "90%", text: "The Bored Ape liquidity pool is initiated."),
            RoadmapObject(percent: "100%", text: "The Mutant Ape (NFT Breeding) Arcade Machine gets ﬁxed. And we cook up new ways to ape with our friends."),
        ]
    }
    
}
