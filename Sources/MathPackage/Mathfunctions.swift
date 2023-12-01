//
//  File.swift
//  
//tes
//  Created by Srinika on 01/12/23.
//

import Foundation
import Alamofire
import UIKit

public protocol MySPMCoordinator {
    func start()
}

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
    
    public static func invokeSDK(){
        let window = UIWindow(frame: UIScreen.main.bounds)
        let coordinator = MySPMModuleCoordinator(window: window)
        coordinator.start()
    }
}

public class MySPMModuleCoordinator: MySPMCoordinator {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    public func start() {
        let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let navigationController = UINavigationController(rootViewController: homeViewController)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
