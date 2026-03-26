//
//  LoginScreen.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 23/03/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            
            AppBackground()
            
            CardView(icon: "lock", title: "User Login"){
                
//                Id Field
                TextField("South African ID Number",text: .constant(""))
                    .padding()
                    .background(Color.marron)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.5),lineWidth: 1)
                    ).foregroundColor(Color.white)
            
//                Password
                
                SecureField("Password",text: .constant(""))
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.5),lineWidth: 1)
                    )
                    .foregroundColor(Color.white)
                
//                Error
                Text("Incorrect username or password")
                    .foregroundColor(Color.magenta)
                    .font(.caption)
                
//                Button
                Button(action: {}){
                    Text("Login")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.magenta)
                        .cornerRadius(10)
                }


            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
