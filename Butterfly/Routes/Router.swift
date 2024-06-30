//
//  Router.swift
//  Butterfly
//
//  Created by Erkebulan Massainov on 30.06.2024.
//

import SwiftUI

class Router : ObservableObject {
    enum Route {
        case welcome
        case collection
        case single
    }
    
    @Published var currentRoute:Route = .welcome
    public func navigate(to route: Route){
        currentRoute = route
    }
    
}
