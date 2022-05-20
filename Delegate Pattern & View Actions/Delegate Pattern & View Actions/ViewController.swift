//
//  ViewController.swift
//  Delegate Pattern & View Actions
//
//  Created by Samuel Noye on 20/05/2022.
//

import UIKit

class ViewController: UIViewController {
  private let notitficationView = NotificationSettingView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


class NotificationSettingView: UIView {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bell")
        imageView.tintColor = .systemPink
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
}

