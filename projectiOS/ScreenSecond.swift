//
//  ScreenSecond.swift
//  projectiOS
//
//  Created by Saurabh Kumar Sharma on 28/09/23.
//

import UIKit

class ScreenSecond: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    @IBOutlet var imageView: UIView!
    @IBOutlet var lblHeading: UILabel!
    @IBOutlet var lblParagraph: UILabel!
    @IBOutlet var collectionViewOutlet: UICollectionView!
    @IBOutlet var lblDownORPlay: UILabel!
    
    
    @IBOutlet var progressBtnViewBack: UIView!
    @IBOutlet var progressBtnViewUp: UIView!
    @IBOutlet var constTrailingProgressBack: NSLayoutConstraint!
    @IBOutlet var constTrailingProgressUp: NSLayoutConstraint!
    @IBOutlet var btnCross: UIButton!
    
    @IBAction func readMoreBtn(_ sender: UIButton) {
    }
    @IBAction func cancelBtn(_ sender: UIButton) {
    }
    
    @IBAction func PlayBtn(_ sender: UIButton) {
        let myView = AlertView(frame: self.view.frame)
        self.view.addSubview(myView)
    }
    
    var isFirstTime = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = imageView.frame.size.height/8
        imageView.clipsToBounds = true
        
        progressBtnViewBack.layer.borderWidth = 1
        progressBtnViewBack.layer.borderColor = UIColor.lightGray.cgColor
        progressBtnViewBack.layer.cornerRadius = progressBtnViewBack.frame.size.height/2
        progressBtnViewBack.clipsToBounds = true
        
        progressBtnViewUp.layer.borderWidth = 1
        progressBtnViewUp.layer.borderColor = UIColor.lightGray.cgColor
        progressBtnViewUp.layer.cornerRadius = progressBtnViewUp.frame.size.height/2
        progressBtnViewUp.clipsToBounds = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(btnActnProgress(_:)))
        progressBtnViewBack.addGestureRecognizer(tap)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func btnActnProgress(_ sender: UITapGestureRecognizer) {
        if isFirstTime {
            isFirstTime = false
            print("First Time")
            
            constTrailingProgressUp.constant = progressBtnViewBack.frame.size.width - 30
            UIView.animate(withDuration: 1.0, delay: 0) {
                self.constTrailingProgressBack.constant = 80
                self.btnCross.alpha = 1.0
                self.view.layoutIfNeeded()
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                self.constTrailingProgressUp.constant = self.progressBtnViewBack.frame.size.width - 30
                self.progressBtnViewUp.backgroundColor = .green
                UIView.animate(withDuration: 1.0, delay: 0) {
                    self.constTrailingProgressUp.constant = 0
                    
                    self.view.layoutIfNeeded()
                    self.lblDownORPlay.text = "10MB/30MB"
                    
                    self.btnCross.setTitle("", for: .normal)
                    self.btnCross.setImage(UIImage(named: "okay"), for: .normal)
                    
                }
                
                
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                
                
                self.btnCross.alpha = 0
                
                self.constTrailingProgressBack.constant = 20
                self.progressBtnViewUp.backgroundColor = .blue
                self.lblDownORPlay.text = "Play"
                
            })
            
        } else {
            print("Other Time")
            let vw = AlertView(frame: self.view.frame)
            self.view.addSubview(vw)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellforCollection", for: indexPath) as! CollectionViewCellforCollection
        
        
        return cell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.*/
    
    
}
