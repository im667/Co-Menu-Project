//
//  Co_Menu_ProjectApp.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/13.
//

import SwiftUI

@main
struct Co_Menu_ProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
