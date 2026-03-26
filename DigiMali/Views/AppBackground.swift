//
//  Background.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 22/03/26.
//

import SwiftUI

struct AppBackground: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            
            Color("Plum")
                .ignoresSafeArea()
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .offset(x:100, y:120)
                .opacity(0.1)
        }
    }
}

struct AppBackground_Previews: PreviewProvider {
    static var previews: some View {
        AppBackground()
    }
}
