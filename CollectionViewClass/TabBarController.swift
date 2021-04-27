//
//  TabBarController.swift
//  LeroyMerlin
//
//  Created by mdy on 22.04.2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        self.tabBar.tintColor = #colorLiteral(red: 0.3233034015, green: 0.7694267035, blue: 0.2460721135, alpha: 1)
    }

}
