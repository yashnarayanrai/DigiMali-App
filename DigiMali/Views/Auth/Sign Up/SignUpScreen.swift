//
//  SignUpScreen.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 12/04/26.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var name = ""
    @State private var idNumber = ""
    @State private var cellphoneNumber = ""
    @State private var emailAddress = ""
    @State private var meterNumber = ""
    @State private var gotoNext = false
    
    var body: some View {
        ZStack{
            AppBackground()
            VStack{
                
                Spacer()
                Header_Digimali()
                Spacer()
                
                VStack(spacing: 20){
                    Text("Please provide some basic details so that we can verify your identity")
                        .foregroundColor(Color.white)
                        .font(.body)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                        
                    
                    AppTextField(placeholder: "*Name & Surname", text: $name )
                    AppTextField(placeholder: "*South African ID Number", text: $idNumber)
                    AppTextField(placeholder: "Cellphone Number", text: $cellphoneNumber)
                    AppTextField(placeholder: "*Email Address", text: $emailAddress)
                    AppTextField(placeholder: "*Meter Number", text: $meterNumber)
                    
                    AppButton(title: "Next"){
                        // logic
                        gotoNext = true
                        
                    }.navigationDestination(isPresented: $gotoNext){
                        SignUpScreenAddress()
                    }

                }
                .padding(.horizontal, 40)

                Spacer()
            }
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SignUpScreenAddress()
        }
    }
}
