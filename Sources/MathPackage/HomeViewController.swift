//
//  HomeViewController.swift
//  
//
//  Created by Srinika on 01/12/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var coordinator: MySPMCoordinator?
    
    public convenience init(coordinator: MySPMCoordinator) {
        self.init()
        self.coordinator = coordinator
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
    }

}
