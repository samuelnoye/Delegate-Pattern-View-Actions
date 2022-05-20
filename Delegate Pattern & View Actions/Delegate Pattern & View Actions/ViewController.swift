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
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "To stay up-to-date enable Push Notifications!"
        label.textAlignment = .center
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Enable Notification", for: .normal)
        button.backgroundColor = .systemPink
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubView(){
        super.layoutSubView()
    }
}

