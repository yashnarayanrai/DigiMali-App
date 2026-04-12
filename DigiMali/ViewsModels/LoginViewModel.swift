//
//  LoginViewModel.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 07/04/26.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    @Published var isLoggedIn = false
    @Published var showError = false
    
    func login(email: String, password: String){
        
        APIService.shared.login(email: email, password: password){ result in
            switch result{
            case .success(let response):
                print("Login success:",response.access_token)
                self.isLoggedIn = true
                
            case .failure(let error):
                print("Error:", error.localizedDescription)
                self.showError = true
            }
        }
    }
}
