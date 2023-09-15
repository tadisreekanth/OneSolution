//
//  AppConstantsProj.swift
//  TestProject
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation
import OneSolutionUtility

class Constants {
    
    static var appIdentifier: String {
        Bundle.main.bundleIdentifier ?? BundleIdentifier.dev.rawValue
    }
    
    static var appBundleIdentifier: BundleIdentifier {
        BundleIdentifier(rawValue:  Self.appIdentifier) ?? .dev
    }
}

extension Constants: AppConstants {
    
    var appVersion: String {
        Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
    }
    
    var buildVersion: String {
        Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
    }
    
    var appEnvironmentText: String {
        switch Self.appBundleIdentifier {
        case .dev: return "Loc"
        case .uat: return "Uat"
        case .epc_uat: return "Epc_Uat"
        case .production: return "Pro"
        }
    }
    
    var defaultCredentials: (userName: String, password: String) {
        if isSimulator {
            switch Host(rawValue: OneSolutionAPIRoute().host) {
            case .dev: return ("KLS", "KLS")
            default: return ("KLSIT", "KLSINFYZ")
            }
        }
        return ("", "")
    }
}
