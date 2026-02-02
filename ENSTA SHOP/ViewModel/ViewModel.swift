//
//  ViewModel.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 24/01/2026.
//

import Foundation
import Combine
import UIKit

protocol LoginViewModelProtocol {

    func isValidSaudiPhone(_ phone: String) -> Bool
    func sendPhoneNumber(_ phone: String,_ completion: @escaping (Result<LoginResponse, Error>) -> Void)
    
}

final class ViewModel: LoginViewModelProtocol {
    
    private let authServices: AuthServicesProtocol
    
    init(authServices: AuthServicesProtocol = AuthServices()) {
        self.authServices = authServices
    }
    
    func sendPhoneNumber(_ phone: String, _ completion: @escaping (Result<LoginResponse, Error>) -> Void) {
        
        authServices.login(phone) { result in
            switch result {
            case .success(let response):
                if response.errorCode == 0 {
                    completion(.success(response))
                } else {
                    let message = response.data?.message ?? "Login field"
                    print("Error", message)
                    completion(.failure(NSError(domain: "API", code: response.errorCode)))
                }
                
            case .failure(let error):
                completion(.failure(error))
                return
            }
        }
    }
    
    
    func isValidSaudiPhone(_ phone: String) -> Bool {
          let cleanedPhone = phone.trimmingCharacters(in: .whitespacesAndNewlines)
          
          // Basic validation
          guard cleanedPhone.count == 9 else { return false }
          guard cleanedPhone.hasPrefix("5") else { return false }
          guard cleanedPhone.allSatisfy({ $0.isNumber }) else { return false }
          
          return true
      }
    
}




struct LoginResponse: Codable {
    let errorCode: Int
    let data: LoginData?
}

struct LoginData: Codable {
    let message: String?
}

struct ReSendCode: Codable {
    let errorCode: Int
    let errorMessage: String?
    let data: String?
}
