//
//  DevMoodApp.swift
//  DevMood
//
//  Created by mac on 2021/02/08.
//

import SwiftUI

@main
struct DevMoodApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
