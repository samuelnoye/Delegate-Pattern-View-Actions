//
//  ViewController.swift
//  Delegate Pattern & View Actions
//
//  Created by Samuel Noye on 20/05/2022.
//

import UIKit

class ViewController: UIViewController, NotificationSettingsViewDelegate {
    
    
  private let notitficationView = NotificationSettingView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notitficationView.delegate = self
        view.addSubview(notitficationView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        notitficationView.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: view.frame.size.width - 20, height: view.frame.size.height - view.safeAreaInsets.top -  view.safeAreaInsets.bottom)
    }
    
    func didTabEnableButton() {
        let alert = UIAlertController(title: "Alert", message: "Alert arrived ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismis", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

}

protocol NotificationSettingsViewDelegate: AnyObject{
    func didTabEnableButton()
}

class NotificationSettingView: UIView {
    weak var delegate: NotificationSettingsViewDelegate?
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
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
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside  )
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize = bounds.size.width / 2
        imageView.frame = CGRect(x: (bounds.size.width - imageSize) / 2, y: 30 , width: imageSize, height: imageSize)
        label.frame = CGRect(x: 10, y: 30+imageSize+20, width: frame.size.width-20, height: 100)
        button.frame = CGRect(x: 40, y: 160+imageSize, width: frame.size.width-80, height: 50)
    }
    
    @objc private func didTabButton(){
        delegate?.didTabEnableButton()
    }
}

