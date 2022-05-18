//
//  Co_Menu_ProjectApp.swift
//  Co-Menu Project
//
//  Created by mac on 2022/05/13.
//

import SwiftUI
import Firebase


@main
struct Co_Menu_ProjectApp: App {
    init() {
        FirebaseApp.configure()
    }
   
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
