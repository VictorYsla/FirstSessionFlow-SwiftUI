//
//  FirstSessionFlowApp.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 24/03/24.
//

import SwiftUI
import SwiftData

@main
struct FirstSessionFlowApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
