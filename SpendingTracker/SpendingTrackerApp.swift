//
//  SpendingTrackerApp.swift
//  SpendingTracker
//
//  Created by volkan on 4/4/22.
//

import SwiftUI

@main
struct SpendingTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
