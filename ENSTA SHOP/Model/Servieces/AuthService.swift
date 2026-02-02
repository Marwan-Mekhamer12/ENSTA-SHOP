//
//  LogInServer.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 20/01/2026.
//

import Foundation

protocol AuthServicesProtocol {
    func login(_ phone: String,_ completion: @escaping(Result<LoginResponse, Error>) -> Void)
    func confirmCode(_ phone: String,_ remdomCode: String,_ completion: @escaping(Result<confirmCodeResponse, Error>) -> Void)
    func ReSendCode(_ phone: String,_ completion: @escaping(Result<ReSendCode, Error>) -> Void)
}

final class AuthServices: AuthServicesProtocol {
    
    
    func login(_ phone: String, _ completion: @escaping (Result<LoginResponse, Error>) -> Void) {
        let parameter = ["phoneNumber": "+966\(phone)"]
        
        APIClient.shared.request(endpoint: "Users/login", method: "POST", parameter: parameter, completion: completion)
        
    }
    func confirmCode(_ phone: String, _ ramdomCode: String, _ completion: @escaping (Result<confirmCodeResponse, Error>) -> Void) {
        let parameter = ["phoneNumber": "+966\(phone)", "randomCode" : "\(ramdomCode)"]
        
        APIClient.shared.request(endpoint: "Users/ConfirmCode", method: "POST", parameter: parameter, completion: completion)
    }
    
    func ReSendCode(_ phone: String, _ completion: @escaping (Result<ReSendCode, Error>) -> Void) {
        let parameter = ["phoneNumber": "+966\(phone)"]
        
        APIClient.shared.request(endpoint: "Users/ReSendCode", method: "POST", parameter: parameter, completion: completion)
    }
    
    
}
