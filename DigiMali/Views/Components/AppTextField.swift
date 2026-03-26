//
//  AppTextField.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 26/03/26.
//

import SwiftUI

struct AppTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    
    @State private var isHidden: Bool = true
    
    var body: some View {
        HStack{
            if isSecure && isHidden{
                SecureField(
                    "",
                    text: $text,
                    prompt: Text(placeholder)
                        .foregroundColor(.white.opacity(1))
                )
            } else {
                TextField(
                    "",
                    text: $text,
                    prompt: Text(placeholder)
                        .foregroundColor(.white.opacity(1))
                )
            }
            
            if isSecure{
                Button(action:{
                    isHidden.toggle()
                }){
                    Image(systemName: isHidden ? "eye.slash":"eye")
                        .foregroundColor(.white.opacity(1))
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white.opacity(1),lineWidth: 2)
        )
        .foregroundColor(.white)
    }
}
