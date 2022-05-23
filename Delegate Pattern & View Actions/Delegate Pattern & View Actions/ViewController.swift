//
//  ViewController.swift
//  Delegate Pattern & View Actions
//
//  Created by Samuel Noye on 20/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let notitficationView = SecondViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notitficationView.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: view.frame.size.width - 20, height: view.frame.size.height - view.safeAreaInsets.top -  view.safeAreaInsets.bottom)
    }

}

