//
//  ViewController.swift
//  CodeView
//
//  Created by Vansa Pha on 2/16/18.
//  Copyright © 2018 Vansa Pha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var firstNameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "First name: "
        lb.textColor = UIColor.blue
        return lb
    }()
    
    lazy var firstNameTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "enter frist name"
        return tf
    }()
    
    lazy var imageView: UIImageView = {
        let img = UIImageView(image: #imageLiteral(resourceName: "ico_car"))
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        return img
    }()
    
    lazy var descriptionTV: UITextView = {
        let tv = UITextView()
        let headerString = NSMutableAttributedString(string: "Join us today in our fun and game.", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 15)])
        headerString.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hop to see you in your store soon.", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 13), NSAttributedStringKey.foregroundColor : UIColor.gray]))
        tv.attributedText = headerString
        tv.textColor = UIColor.black
        tv.textAlignment = .center
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupView()
    }

    private func setupView() {
       
        let topImageContainerView = UIView()
        //topImageContainerView.backgroundColor = UIColor.cyan
        self.view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.addSubview(imageView)
        
        //image
        imageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        //desc
        view.addSubview(descriptionTV)
        descriptionTV.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 0).isActive = true
        descriptionTV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        descriptionTV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        descriptionTV.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}












