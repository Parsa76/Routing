//
//  AnyAppAlert.swift
//  ArchitectureBootcamp
//
//  Created by Parsa Keshavarz on 20.07.25.
//
import SwiftUI

public struct AnyAppAlert: Sendable {
    var title: String?
    var subtitle: String?
    var buttons: @Sendable () -> AnyView
    
    public init(
        title: String? = nil,
        subtitle: String? = nil,
        buttons: (@Sendable () -> AnyView)? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons ?? {
            AnyView(
                Button("Ok", action: {
                    
                })
            )
        }
    }
    
    public init(error: Error) {
        self.init(title: "Error", subtitle: error.localizedDescription, buttons: nil)
    }
}
