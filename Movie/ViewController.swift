//
//  ViewController.swift
//  Movie
//
//  Created by 나지운 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circularImage3: UIImageView!
    @IBOutlet weak var circularImage2: UIImageView!
    @IBOutlet weak var circularImage: UIImageView!
    @IBOutlet weak var posterImgeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterImgeView.image = UIImage(named: "poster\(Int.random(in: 1...6))")
        
        circularImage.layer.masksToBounds = true
        circularImage.layer.cornerRadius = circularImage.bounds.width / 2
        circularImage.layer.borderWidth = 3
        circularImage.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
        
        circularImage2.layer.masksToBounds = true
        circularImage2.layer.cornerRadius = circularImage.bounds.width / 2
        circularImage2.layer.borderWidth = 3
        circularImage2.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
        
        circularImage3.layer.masksToBounds = true
        circularImage3.layer.cornerRadius = circularImage.bounds.width / 2
        circularImage3.layer.borderWidth = 3
        circularImage3.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
    }

    @IBAction func pageChangeButtonClicked(_ sender: UIButton) {
        posterImgeView.image = UIImage(named: "poster\(Int.random(in: 1...6))")
    }
    
}

