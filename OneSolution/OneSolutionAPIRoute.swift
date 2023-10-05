//
//  ServiceURLProj.swift
//  TestProject
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation
import OneSolutionAPI
import OneSolutionUtility

enum BundleIdentifier: String {
    case dev        = "com.yqlabs.OneSolution"
    case uat        = "com.Infyz.OneSolutionUAT"
    case epc_uat    = "com.Infyz.OneSolutionEPCUAT"
    case production = "com.Infyz.OneSolution"
}

enum Host: String {
    case dev        = "http://183.82.120.57:18989" //"http://183.82.120.57:18989" //"http://115.243.3.254:18989"
    case uat        = "https://epc.infyztoms.com"
    case epc_uat    = "https://epcuat.infyztoms.com"
    case production = "https://os.2wth.com"
}

class OneSolutionAPIRoute {
    private var apiHost: String = ""
    
    init() {
        self.updateAPIHost()
    }
    
    private func updateAPIHost() {
        if let saved = UserDefaults.standard.string(forKey: keySavedBaseURL) {
            apiHost = saved
        } else {
            switch Constants.appBundleIdentifier {
            case .production: apiHost = Host.production.rawValue
            case .epc_uat: apiHost = Host.epc_uat.rawValue
            case .uat: apiHost = Host.uat.rawValue
            case .dev: apiHost = Host.dev.rawValue
            }
        }
    }
    
    deinit {
        print(log: "deinit \(OneSolutionAPIRoute.self)")
    }
}

extension OneSolutionAPIRoute: APIRoute {
    var host: String {
        apiHost
    }
    
    var endPoint: String {
        return self.host == "http://115.243.3.254:18989" ? "EPC/rest" : "EPCAPI/rest"
    }
    
    func hostUpdated() {
        updateAPIHost()
    }
}
