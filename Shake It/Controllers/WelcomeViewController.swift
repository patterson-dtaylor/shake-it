//
//  ViewController.swift
//  Shake It
//
//  Created by Taylor Patterson on 5/5/20.
//  Copyright © 2020 Taylor Patterson. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


