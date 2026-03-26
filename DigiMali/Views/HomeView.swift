//
//  HomeView.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 20/03/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            AppBackground()
            
            VStack(spacing: 80){
                
                Header_Digimali()
                
                VStack(spacing: 20){
                    
                    Button(action: {}){
                        Text("Login")
                            .foregroundColor(Color("White"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("Magenta"))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {}){
                        Text("Sign Up")
                            .foregroundColor(Color("White"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Magenta"),lineWidth: 2)
                            )
                    }
                }.padding(.horizontal, 120)
                
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
