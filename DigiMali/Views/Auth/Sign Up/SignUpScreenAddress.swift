//
//  SignUpScreenAddress.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 12/04/26.
//

import SwiftUI

struct SignUpScreenAddress: View {
    
    @State private var houseNumber = ""
    @State private var complexName = ""
    @State private var streetName = ""
    @State private var city = ""
    @State private var areaCode = ""
    
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
                        
                    
                    AppTextField(placeholder: "House number / Apartment Number", text: $houseNumber )
                    AppTextField(placeholder: "Complex Name", text: $complexName)
                    AppTextField(placeholder: "Street Name", text: $streetName)
                    HStack(spacing: 20){
                        AppTextField(placeholder: "City", text: $city)
                        AppTextField(placeholder: "Area Code", text: $areaCode)
                    }
                   
                    
                    AppButton(title: "Save"){
                        
                    }

                }
                .padding(.horizontal, 40)
                
                Spacer()
            }
        }
    }
}

struct SignUpScreenAddress_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenAddress()
    }
}
