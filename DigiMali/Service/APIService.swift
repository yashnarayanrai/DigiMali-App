//
//  APIService.swift
//  DigiMali
//
//  Created by Anand Narayan Rai on 07/04/26.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    func login(email: String, password: String, completion: @escaping(Result<LoginResponse, Error>) -> Void){
        
        guard let url = URL(string: "https://42987621-66d1-4b78-b04e-ded7a4607285.mock.pstmn.io/login") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body = LoginRequest(email: email, password: password)
        
        do {
            request.httpBody = try JSONEncoder().encode(body)
        } catch {
            completion(.failure(error))
            return
        }
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do{
                let result = try JSONDecoder().decode(LoginResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
            
        }.resume()
    }
}
