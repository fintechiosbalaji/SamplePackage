//
//  File.swift
//  
//
//  Created by Srinika on 01/12/23.
//

import Foundation
import Alamofire

public struct MyMathFunctions {
    public static func square(_ number: Int) -> Int {
        return number * number
    }

    public static func fetchData(completion: @escaping (Result<String, Error>) -> Void) {
        AF.request("https://www.example.com/api/data").responseString { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
