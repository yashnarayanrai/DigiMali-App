//
//  LoginScreen.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 23/03/26.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showError = false
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        
        ZStack{
            
            AppBackground()
            
            VStack(){
                
                Spacer()
                Header_Digimali()
                Spacer()
                CardView(icon: "LockIcons", title: "User Login"){
                    
    //                Id Field
                    AppTextField(placeholder: "*South African ID Number", text:$email)
    //                Password
                    AppTextField(placeholder: "*Password", text: $password,isSecure: true)
                    
                    
    //                Error
                    if vm.showError{
                        Text("Incorrect username or password")
                            .foregroundColor(Color.accent)
                            .font(.caption)
                    }
                    
    //                Button
                    AppButton(title: "Login") {
                        if email.isEmpty || password.isEmpty{
                            vm.showError = true
                        }
                        
                        vm.login(email: email, password: password)
                        
                    }
                        .padding(.bottom,40)
                }
                Spacer()
            }
        }
        
        .navigationDestination(isPresented: $vm.isLoggedIn){
            LoginUpdatePassword()
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
