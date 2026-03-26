//
//  DigiMaliApp.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 20/03/26.
//

import SwiftUI

@main
struct DigiMaliApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
