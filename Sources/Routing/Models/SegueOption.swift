//
//  SegueOption.swift
//  ArchitectureBootcamp
//
//  Created by Parsa Keshavarz on 20.07.25.
//


public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNavigationView: Bool {
        switch self {
        case .push:
            return false
        default:
            return true
        }
    }
}
