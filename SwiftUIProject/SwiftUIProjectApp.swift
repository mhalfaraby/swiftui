//
//  SwiftUIProjectApp.swift
//  SwiftUIProject
//
//  Created by Muhammad Alfaraby on 15/08/23.
//

import SwiftUI

@main
struct SwiftUIProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
