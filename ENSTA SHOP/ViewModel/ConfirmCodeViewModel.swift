//
//  ConfirmCodeViewModel.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 25/01/2026.
//

import Foundation

protocol ConfirmCodeViewModelProtocol {
    func getCode(_ phone: String,_ randomcode: String,_ completion: @escaping (Result<confirmCodeResponse, Error>) -> Void)
}

final class confirmCodeViewModel: ConfirmCodeViewModelProtocol {
    
    private let authServices: AuthServicesProtocol
    
    init(authServices: AuthServicesProtocol = AuthServices()) {
        self.authServices = authServices
    }
    
    func getCode(_ phone: String,_ randomcode: String,_ completion: @escaping (Result<confirmCodeResponse, Error>) -> Void) {
        authServices.confirmCode(phone, randomcode) { result in
            switch result {
            case .success(let response):
                if response.errorCode == 0 {
                    completion(.success(response))
                } else {
                    completion(.failure(NSError(domain: "API", code: response.errorCode)))
                }
            case .failure(let error):
                completion(.failure(error))
                return
            }
        }
    }
    
    
}


struct confirmCodeRequest: Codable {
    let randomCode: String
    let phoneNumber: String
}

struct confirmCodeResponse: Codable {
    let errorCode: Int
    let errorMessage: String?
    let data: String?
}

