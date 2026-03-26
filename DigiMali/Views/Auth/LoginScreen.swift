//
//  LoginScreen.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 23/03/26.
//

import SwiftUI

struct LoginView: View {
    @State private var id = ""
    @State private var password = ""
    @State private var showError = false
    
    var body: some View {
        
        ZStack{
            
            AppBackground()
            
            VStack(){
                
                Spacer()
                Header_Digimali()
                Spacer()
                CardView(icon: "lock", title: "User Login"){
                    
    //                Id Field
                    AppTextField(placeholder: "*South African ID Number", text:$id)
    //                Password
                    AppTextField(placeholder: "*Password", text: $password,isSecure: true)
                    
                    
    //                Error
                    if showError{
                        Text("Incorrect username or password")
                            .foregroundColor(Color.accent)
                            .font(.caption)
                    }
                    
    //                Button
                    AppButton(title: "Login") {
                        if id.isEmpty || password.isEmpty{
                            showError = true
                        }
                    }
                        .padding(.bottom,40)
                }
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
