//
//  CardViewController.swift
//  HW2.4
//
//  Created by Алексей Маслобоев on 10.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

final class CardViewController: UIViewController {

    // MARK: - Private Properties
    
    private let mainSiteLink = "https://masloboev.ru"
    
    // MARK: - IBActions
    
    @IBAction func goToSite() {
        if let url = URL(string: mainSiteLink) {
            UIApplication.shared.open(url)
        }
    }
}
