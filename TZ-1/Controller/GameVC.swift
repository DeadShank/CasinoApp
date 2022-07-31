//
//  GameVC.swift
//  TZ-1
//
//  Created by Alex on 22.07.2022.
//

import UIKit

class GameVC: UIViewController {
    @IBOutlet weak var gameCollection: UICollectionView!
    @IBOutlet weak var rightDarkView: UIView!
    @IBOutlet weak var chestImage: UIImageView!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var coinCountBackGround: UIView!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var coinLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var roundValueLabel: UILabel!

    
    var userDef = MyUserData()
    var arrayImages = [UIImage?]()
    var arrayRandom = [UIImage?]()
    var winIndex = [Int]()
    var timer = Timer()
    let timerToTime = 1
    var countElem = 0
    var countCoin = 0
    var rateCount = 50
    var totalCountCoin = 0
    var logicGame = GameLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        propElem()
        colorCustom()
        createGameCollection()
        randomEllement()
    }
    
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    func randomEllement() {
        arrayRandom = []
        for _ in 1...15 {
            arrayRandom += [arrayImages.randomElement()!]
        }
        
    }
    
    
    
    func checkAll() {
        logicGame.winIndex = winIndex
        logicGame.arrayRandom = arrayRandom
        logicGame.rateCount = rateCount
        
        logicGame.checkWinning()
        
        winIndex = logicGame.winIndex
        countCoin = logicGame.countCoin
        
        }
    
    

    
    func createGameCollection() {
        gameCollection.delegate = self
        gameCollection.dataSource = self
        
    }
    
    func propElem() {
        totalCountCoin = userDef.getInt()
        
        coinLabel.text = String(totalCountCoin)
        
        roundValueLabel.text = "WIN: \(countCoin)"
        
        rateLabel.text = String(rateCount)
        
        coinLabel.clipsToBounds = true
        coinLabel.layer.cornerRadius = 3
        
        minusButton.clipsToBounds = true
        minusButton.layer.cornerRadius = 3
        minusButton.layer.borderColor = UIColor.red.cgColor
        minusButton.layer.borderWidth = 1
        
        rateLabel.clipsToBounds = true
        rateLabel.layer.cornerRadius = 3
        rateLabel.layer.borderWidth = 1
        rateLabel.layer.borderColor = UIColor.red.cgColor
        
        plusButton.clipsToBounds = true
        plusButton.layer.cornerRadius = 3
        plusButton.layer.borderColor = UIColor.red.cgColor
        plusButton.layer.borderWidth = 1
        
    }
    

    
    func checkCoinAndRait() {
        
        if rateCount > totalCountCoin {
            coinLabel.clipsToBounds = true
            coinLabel.layer.borderColor = UIColor.red.cgColor
            coinLabel.layer.borderWidth = 3
        } else {
            coinLabel.clipsToBounds = true
            coinLabel.layer.borderColor = UIColor.clear.cgColor
            coinLabel.layer.borderWidth = 0
            reloadElements()
            print(arrayRandom.count)
            winIndex = []
            roundValueLabel.text = "WIN: 0"
            totalCountCoin -= rateCount
            coinLabel.text = String(totalCountCoin)
        }
    }
    
    func colorCustom() {
        let layer0 = CAGradientLayer()
        layer0.colors = [
          UIColor(red: 0.953, green: 0.651, blue: 0.306, alpha: 1).cgColor,
          UIColor(red: 0.929, green: 0.471, blue: 0.247, alpha: 1).cgColor
        ]
        layer0.locations = [0, 1]
        layer0.frame = CGRect(x: 0, y: 0, width: self.coinCountBackGround.frame.size.width, height: self.coinCountBackGround.frame.size.height)
        coinCountBackGround.layer.addSublayer(layer0)
    }
    
    func reloadElements() {
        timer = .scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timeTimer), userInfo: nil, repeats: true)
    }
    @objc func timeTimer() {
        if countElem != 5 {
            countElem += timerToTime
            randomEllement()
            gameCollection.reloadData()
        } else {
            print("stopElements")
            timer.invalidate()
            checkAll()
            countElem = 0
            countCoin -= rateCount
            totalCountCoin += (countCoin + rateCount)
            print("\(countCoin) coins v pamiati")
            userDef.saveInt(intN: totalCountCoin)
            coinLabel.text = String(totalCountCoin)
            roundValueLabel.text = "WIN: \(countCoin)"
            countCoin = 0
            print("win array = \(winIndex)")
            gameCollection.reloadData()
        }
    }
    
    
         
    @IBAction func minusButton(_ sender: UIButton) {
        rateCount -= 5
        rateLabel.text = String(rateCount)
        
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        rateCount += 5
        rateLabel.text = String(rateCount)
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func spinButton(_ sender: UIButton) {
        checkCoinAndRait()
    }
}

extension GameVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = gameCollection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imageElement.image = arrayRandom[indexPath.row]
        
        if winIndex.contains(indexPath.row) {
            cell.layer.borderColor = UIColor.red.cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 3
        } else {
            cell.layer.borderColor = UIColor.clear.cgColor
            cell.layer.borderWidth = 0
        }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: gameCollection.frame.width / 5, height: gameCollection.frame.height / 3)

        }
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0, left: 0, bottom:0, right: 0)

        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
            
        }
    
    
}
