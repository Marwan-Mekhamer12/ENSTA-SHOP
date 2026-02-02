//
//  APIClient.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 29/01/2026.
//

import Foundation

class APIClient {
    static let shared = APIClient()
    
    private let baseURL = "http://alamatit-002-site2.atempurl.com/api"
    
    func request<T: Decodable>(
        endpoint: String,
        method: String,
        parameter: [String: Any]? = nil,
        completion: @escaping(Result<T, Error>) -> Void
    ) {
        guard let url = URL(string: "\(baseURL)/\(endpoint)") else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let parameter = parameter {
            request.httpBody = try? JSONSerialization.data(withJSONObject: parameter)
        }
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            do {
                let decoded = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decoded))
            } catch {
                completion(.failure(error))
                return
            }
        }
        .resume()
    }
        
}
