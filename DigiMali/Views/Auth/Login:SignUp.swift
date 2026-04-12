//
//  Login:SignUp.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 12/04/26.
//

import SwiftUI

struct Login_SignUp: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                AppBackground()
                
                VStack(spacing: 80){
                    
                    Header_Digimali()
                    
                    VStack(spacing: 20){
                        
                        NavigationLink(destination: LoginScreen()) {
                                            Text("Login")
                                                .foregroundColor(Color("White"))
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color("Magenta"))
                                                .cornerRadius(10)
                                        }
                        
                        NavigationLink(destination: SignUpScreen()){
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
}

struct Login_SignUp_Previews: PreviewProvider {
    static var previews: some View {
        Login_SignUp()
    }
}
