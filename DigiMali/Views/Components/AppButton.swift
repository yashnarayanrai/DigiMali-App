//
//  AppButton.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 26/03/26.
//

import SwiftUI

struct AppButton: View{
    var title: String
    var action: () -> Void
    
    var body: some View{
        Button(action: action){
            Text(title)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(Color.accent)
                .cornerRadius(10)
        }
    }
}
