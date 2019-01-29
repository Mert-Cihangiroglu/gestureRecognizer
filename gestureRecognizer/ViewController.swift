//
//  ViewController.swift
//  gestureRecognizer
//
//  Created by Mert Cihangiroğlu on 1/24/19.
//  Copyright © 2019 MertCihangiroglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isGodzinOn = true
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changepic))
        ImageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changepic(){
        if isGodzinOn == true{
            ImageView.image = UIImage(named:"david-august---press-photo-copy.jpg" )
            NameLabel.text = "DAVID AUGUST"
            isGodzinOn = false
        }else if isGodzinOn == false {
            ImageView.image = UIImage(named:"maxresdefault.jpg" )
            NameLabel.text = "GODZIN"
            isGodzinOn = true
            
        }
        
    }
    
}

