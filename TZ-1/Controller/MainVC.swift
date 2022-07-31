//
//  MainVC.swift
//  TZ-1
//
//  Created by Alex on 22.07.2022.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var chestImage: UIImageView!
    @IBOutlet weak var coinCountLabel: UILabel!
    @IBOutlet weak var blackBackground: UIView!
    @IBOutlet weak var redLineOneImage: UIImageView!
    @IBOutlet weak var redLineTwoImage: UIImageView!
    @IBOutlet weak var popularButton: UIButton!
    @IBOutlet weak var allGamesButton: UIButton!
    @IBOutlet weak var gameOneButton: UIButton!
    @IBOutlet weak var gameTwoButton: UIButton!
    @IBOutlet weak var gameThreeButton: UIButton!
    
    var userDef = MyUserData()
    
    let gameOneEllements: [UIImage?] = [UIImage(named: "One.1"), UIImage(named: "One.2"), UIImage(named: "One.3"), UIImage(named: "One.4"), UIImage(named: "One.5"), UIImage(named: "One.6"), UIImage(named: "One.7"), UIImage(named: "One.8"), UIImage(named: "One.9")]
    
    let gameTwoEllements: [UIImage?] = [UIImage(named: "Two.1"), UIImage(named: "Two.2"), UIImage(named: "Two.3"), UIImage(named: "Two.4"), UIImage(named: "Two.5"), UIImage(named: "Two.6"), UIImage(named: "Two.7"), UIImage(named: "Two.8"), UIImage(named: "Two.9")]
    
    let gameThreeEllements: [UIImage?] = [UIImage(named: "Three.1"), UIImage(named: "Three.2"), UIImage(named: "Three.3"), UIImage(named: "Three.4"), UIImage(named: "Three.5"), UIImage(named: "Three.6"), UIImage(named: "Three.7"), UIImage(named: "Three.8"), UIImage(named: "Three.9")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        propElements()
        popularGamesVision()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        avatarImage.isUserInteractionEnabled = true
        avatarImage.addGestureRecognizer(tapGestureRecognizer)

    }
    
    override func viewWillLayoutSubviews() {
        propElements()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.allowsEditing = true
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    func propElements() {
        
        avatarImage.layer.borderColor = UIColor.black.cgColor
        avatarImage.layer.borderWidth = 2
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.clipsToBounds = true
        
        blackBackground.clipsToBounds = true
        blackBackground.layer.cornerRadius = 20
        
        coinCountLabel.clipsToBounds = true
        coinCountLabel.layer.cornerRadius = 3
        coinCountLabel.text = String(userDef.getInt())
        
        popularButton.setTitle("Popular", for: .normal)
        allGamesButton.setTitle("All Games", for: .normal)
        
    }
    
    func popularGamesVision() {
        redLineOneImage.alpha = 1
        redLineTwoImage.alpha = 0
        popularButton.setTitleColor(.white, for: .normal)
        allGamesButton.setTitleColor(.lightGray, for: .normal)
        gameTwoButton.alpha = 0
        gameThreeButton.alpha = 0
        
    }
    
    func allGamesVision() {
        redLineOneImage.alpha = 0
        redLineTwoImage.alpha = 1
        popularButton.setTitleColor(.lightGray, for: .normal)
        allGamesButton.setTitleColor(.white, for: .normal)
        gameTwoButton.alpha = 1
        gameThreeButton.alpha = 1
        
        
    }
    
    @IBAction func popularButton(_ sender: UIButton) {
        popularGamesVision()
    }
    
    
    @IBAction func allGamesButton(_ sender: UIButton) {
        allGamesVision()
    }
    @IBAction func gameOneButton(_ sender: Any) {
        let myStoryBoard = UIStoryboard.init(name: "storyboardTwo", bundle: nil)
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "GameVC") as! GameVC
        vc.arrayImages = gameOneEllements
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        print("gameOne")
    }
    
    @IBAction func gameTwoButton(_ sender: UIButton) {
        let myStoryBoard = UIStoryboard.init(name: "storyboardTwo", bundle: nil)
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "GameVC") as! GameVC
        vc.arrayImages = gameTwoEllements
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        print("gameTwo")
    }
    
    @IBAction func gameThreeButton(_ sender: UIButton) {
        let myStoryBoard = UIStoryboard.init(name: "storyboardTwo", bundle: nil)
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "GameVC") as! GameVC
        vc.arrayImages = gameThreeEllements
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        print("gameThree")
    }
}

extension MainVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            userDef.saveImage(image: image)
            avatarImage.image = userDef.getImage()
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
