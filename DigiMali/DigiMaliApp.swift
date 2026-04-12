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
    
    init(){
        UINavigationBar.appearance().tintColor = UIColor.red
    }

    var body: some Scene {
        WindowGroup {
            NavigationStack{
                Login_SignUp()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
