//
//  LoginModel.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 07/04/26.
//

import Foundation

struct LoginRequest: Codable{
    let email : String
    let password: String
}

struct LoginResponse: Codable{
    let access_token: String
    let refresh_token: String
    let user_id: String
}
