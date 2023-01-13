//
//  TeamScreenViewModel.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class TeamScreenViewModel: ObservableObject {
    
    // MARK: - Public Properties
    
    let titleText: String = "The Team"
    
    @Published var subtitleText: String = ""
    @Published var teamMembers: [TeamMember] = []
    
    
    // MARK: - Init
    
    init(){
        self.teamMembers = createTeamMembers()
        self.subtitleText = createSubtitleText()
    }
    
}


// MARK: - Private Methods

extension TeamScreenViewModel {
    
    private func createSubtitleText() -> String {
        return "BAYC was created by four friends who set out to make some dope apes, test our skills, and try to build something (ridiculous)."
    }
    
    private func createTeamMembers() -> [TeamMember]{
        return [
            TeamMember(name: "GARGAMEL.", text: "STARCRAFT OBSESSED. EATS SMURFS."),
            TeamMember(name: "GORDON GONER.", text: "REFORMED LEVERAGE ADDICT."),
            TeamMember(name: "EMPEROR TOMATO KETCHUP. ", text: "SPENT ALL THEIR MONEY ON FIRST PRESSES AND PET-NAT."),
            TeamMember(name: "NO SASS.", text: "HERE FOR THE APES. NOT FOR THE SASS."),
        ]
    }
    
}
