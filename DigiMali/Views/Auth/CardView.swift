//
//  CardView.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 26/03/26.
//

import Foundation
import SwiftUI

struct CardView<Content:View>: View {
    let icon: String
    let title: String
    let content: Content
    
    init(icon: String, title: String, @ViewBuilder content:() -> Content){
        self.icon = icon
        self.title = title
        self.content = content ()
    }
    
    var body: some View{
        VStack(spacing:20){
            
            ZStack{
                Circle()
                    .fill(Color.white)
                    .frame(width: 70, height: 70)
                
                Image(systemName: icon)
            }
            
            Text(title)
                .foregroundColor(Color.white)
                .font(.headline)
            
            content
            
        }
        .padding(25)
        .background(Color.marron)
        .cornerRadius(20)
        .shadow(color:Color.black,radius: 10,x:0,y:5)
        .padding(.horizontal, 25)
    }
}
