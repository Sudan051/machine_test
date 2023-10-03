//
//  ViewController.swift
//  projectiOS
//
//  Created by Saurabh Kumar Sharma on 28/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIView!
    @IBOutlet var buttonView: UIView!
    
    @IBAction func navigationBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScreenSecond")as! ScreenSecond
       
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = imageView.frame.size.height/8
        imageView.clipsToBounds = true
        
        buttonView.layer.borderWidth = 1
        buttonView.layer.borderColor = UIColor.lightGray.cgColor
        buttonView.layer.cornerRadius = buttonView.frame.size.height/2
        buttonView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }


}

