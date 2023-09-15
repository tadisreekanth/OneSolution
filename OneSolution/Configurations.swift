//
//  Configurations.swift
//  TestProject
//
//  Created by sreekanth reddy Tadi on 30/06/23.
//

import SwiftUI
import OneSolutionAPI

class Configurations: ObservableObject {
    @Published var appConstants = Constants()
    @Published var route = OneSolutionAPIRoute()
    @Published var paths = OneSolutionAPIPath()

    init() {
        APIClient.shared?.appConstants = appConstants
        APIClient.shared?.route = route
        APIClient.shared?.path = paths
    }
}
