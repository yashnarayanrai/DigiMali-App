//
//  Header Digimali.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 22/03/26.
//

import SwiftUI

struct Header_Digimali: View {
    var body: some View {
        HStack(spacing:10){
            Image("Logo")
                .resizable()
                .frame(width: 50, height: 50)
                
        
            Text("DigiMali")
                .foregroundColor(Color("White"))
                .font(.system(size: 40,weight: .black))

        }
    }
}

struct Header_Digimali_Previews: PreviewProvider {
    static var previews: some View {
        Header_Digimali()
    }
}
