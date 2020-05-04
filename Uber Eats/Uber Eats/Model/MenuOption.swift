//
//  MenuOption.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 26/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Home
    case Cuisines
    case Search
    case Cart
    case Profile
    case Orders
    case Logout
    
    var description: String {
        switch self {
            
        case .Home: return "HOME"
        case .Cuisines: return "CUISINES"
        case .Search: return "SEARCH"
        case .Cart: return "CART"
        case .Profile: return "PROFILE"
        case .Orders: return "ORDERS"
        case .Logout: return "LOGOUT"
        }
    }
    
    var image: UIImage {
        switch self {
            
        case .Home: return UIImage(named: "bt-home") ?? UIImage()
        case .Cuisines: return UIImage(named: "bt-cuisines") ?? UIImage()
        case .Search: return UIImage(named: "bt-search") ?? UIImage()
        case .Cart: return UIImage(named: "bt-cart") ?? UIImage()
        case .Profile: return UIImage(named: "bt-profile") ?? UIImage()
        case .Orders: return UIImage(named: "bt-orders") ?? UIImage()
        case .Logout: return UIImage(named: "bt-logout") ?? UIImage()
        }
    }
    
}
