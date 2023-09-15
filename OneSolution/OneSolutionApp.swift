//
//  OneSolutionApp.swift
//  OneSolution
//
//  Created by Sreekanth Reddy Tadi on 15/09/23.
//

import SwiftUI
import OneSolutionAPI
import OneSolutionAppInterface

@main
struct OneSolutionApp: App {
    @ObservedObject var configurations = Configurations()
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        let _ = Network.isReachable
    }

    var body: some Scene {
        WindowGroup {
            AppInterface()
        }
    }
}
