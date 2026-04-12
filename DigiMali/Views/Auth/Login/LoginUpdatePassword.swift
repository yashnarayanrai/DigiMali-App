//
//  LoginUpdatePassword.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 12/04/26.
//

import SwiftUI

struct LoginUpdatePassword: View {
    
    @State private var homeScreen = false
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @State private var showError = false
    
    var body: some View {
        
        ZStack{
            
            AppBackground()
            
            VStack(){
                
                Spacer()
                Header_Digimali()
                Spacer()
                CardView(icon: "LockIcons", title: "Update Password"){
                    
    //              New Password
                    AppTextField(placeholder: "*New Password", text: $newPassword,isSecure: true)
    //              Confirm  Password
                    AppTextField(placeholder: "*Confirm Password", text: $confirmPassword,isSecure: true)
                    
                    
    //              Password text error
                    if showError {
                        Text("*Password needs to consist of 8 characters or more, and contain number and special characters")
                            .font(.caption2)
                            .foregroundColor(Color.green)
                    }
                        
                    
    //                Button
                    AppButton(title: "Update") {
                        //Update Logic
                        if newPassword.isEmpty || confirmPassword.isEmpty || newPassword.count < 8 || confirmPassword.count < 8 || newPassword != confirmPassword {
                            showError = true
                        } else {
                            homeScreen = true
                        }
                    }
                    .navigationDestination(isPresented: $homeScreen){

                    }
                        .padding(.bottom,40)
                }
                Spacer()
            }
        }
    }
}

struct LoginUpdatePassword_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            LoginUpdatePassword()
        }
    }
}
