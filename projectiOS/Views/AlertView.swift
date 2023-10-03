//
//  AlertView.swift
//  projectiOS
//
//  Created by Saurabh Kumar Sharma on 29/09/23.
//

import UIKit

class AlertView: UIView {
    
    @IBOutlet var mainView: UIView!
    
    
    
    
    @IBOutlet var viewSquare1: UIView!
    @IBOutlet var circle1: UIView! 
    @IBOutlet var viewSquare2: UIView!
    @IBOutlet var viewSquare3: UIView!
    @IBOutlet var circle2: UIView!
    @IBOutlet var viewSquare4: UIView!
    @IBOutlet var viewSquare5: UIView!
    @IBOutlet var viewCenter: UIView!
    
    @IBOutlet var constCenterOfCenterView: NSLayoutConstraint!
    
    @IBOutlet var btnView: UIView!
    
    @IBAction func nextBtn(_ sender: UIButton) {
       
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
        viewSquare1.layer.borderWidth = 1
        viewSquare1.layer.borderColor = UIColor.lightGray.cgColor
        viewSquare1.layer.cornerRadius = viewSquare1.frame.size.height/8
        viewSquare1.clipsToBounds = true
        
        viewSquare2.layer.borderWidth = 1
        viewSquare2.layer.borderColor = UIColor.lightGray.cgColor
        viewSquare2.layer.cornerRadius = viewSquare2.frame.size.height/8
        viewSquare2.clipsToBounds = true
        
        viewSquare3.layer.borderWidth = 1
        viewSquare3.layer.borderColor = UIColor.lightGray.cgColor
        viewSquare3.layer.cornerRadius = viewSquare2.frame.size.height/8
        viewSquare3.clipsToBounds = true
        
        viewSquare4.layer.borderWidth = 1
        viewSquare4.layer.borderColor = UIColor.lightGray.cgColor
        viewSquare4.layer.cornerRadius = viewSquare2.frame.size.height/8
        viewSquare4.clipsToBounds = true
        
        viewSquare5.layer.borderWidth = 1
        viewSquare5.layer.borderColor = UIColor.lightGray.cgColor
        viewSquare5.layer.cornerRadius = viewSquare2.frame.size.height/8
        viewSquare5.clipsToBounds = true
        
        
        circle1.layer.borderWidth = 1
        circle1.layer.borderColor = UIColor.lightGray.cgColor
        circle1.layer.cornerRadius = viewSquare2.frame.size.height/2
        circle1.clipsToBounds = true
        
        circle2.layer.borderWidth = 1
        circle2.layer.borderColor = UIColor.lightGray.cgColor
        circle2.layer.cornerRadius = viewSquare2.frame.size.height/2
        circle2.clipsToBounds = true
        
    }
    
    required init?(coder:NSCoder) {
        super.init(coder: coder)!
        
        setup()
    }
    
    //<------func for load Alert and set constraits------>
    
    func setup() {
        Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil)
        addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        let vs1Frame = viewSquare1.frame
        
        DispatchQueue.main.async {
            self.viewSquare1.frame.size.width = 0
            self.viewSquare1.frame.size.height = 0
            self.viewSquare1.frame.origin.x += vs1Frame.width/2
            UIView.animate(withDuration: 1.0, delay: 0) {
                self.viewSquare1.frame = vs1Frame
                self.constCenterOfCenterView.constant = 0
                self.mainView.layoutIfNeeded()
            }
            UIView.animate(withDuration: 1.0, delay: 0) {
                
            }
        }
    }
    
    
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
