//
//  ForgotPasswordVerificationCodeScreen.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 27/03/26.
//

import SwiftUI

struct ForgotPasswordVerificationCodeScreen: View {
    @State private var showError = false

    var body: some View {
        ZStack{
            AppBackground()
            VStack{
                Header_Digimali()
                Spacer()
                CardView(icon: "VerifyCodeIcons", title: "Enter Verification Code"){
                    
                    Text("Sent to your registered cellphone number")
                    
                    if showError{
                        HStack{
                            Image(systemName: "xmarks.circle")
                            
                            Text("Incorrect Verification Code")
                                .foregroundColor(Color.accent)
                                .font(.caption)
                        }
                    }
                    
                }
            }
        }
    }
}

struct ForgotPasswordVerificationCodeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordVerificationCodeScreen()
    }
}
