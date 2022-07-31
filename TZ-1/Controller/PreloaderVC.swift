//
//  ViewController.swift
//  TZ-1
//
//  Created by Alex on 22.07.2022.
//

import UIKit

class PreloaderVC: UIViewController {
    @IBOutlet weak var chestImage: UIImageView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var progresView: UIProgressView!
    
    var timer = Timer()
    let timerToTime = 1 / 3.0
    let userDef = MyUserData()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progresView.progress = 0
        progressViewTime()
        startCoins()
        // Do any additional setup after loading the view.
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    func startCoins() {
        if userDef.getInt() == 0 {
            userDef.saveInt(intN: 100)
        }
    }
    
    func progressViewTime() {
        timer = .scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeTimer), userInfo: nil, repeats: true)
    }
    @objc func timeTimer() {
        if progresView.progress != 1 {
            progresView.progress += Float(timerToTime)
        } else {
            print("stopTimer")
            timer.invalidate()
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainVC
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
    }


}

