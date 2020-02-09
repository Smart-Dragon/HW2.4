//
//  MainViewController.swift
//  HW2.4
//
//  Created by Алексей Маслобоев on 09.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    // MARK: - Public Properties
    
    public var currentUser: User!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = currentUser.name
    }

    // MARK: - IBActions
    
    @IBAction func logOutAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
