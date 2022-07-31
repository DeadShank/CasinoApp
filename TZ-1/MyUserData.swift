//
//  MyUserData.swift
//  TZ-1
//
//  Created by Alex on 28.07.2022.
//

import UIKit
import Foundation

class MyUserData {
    let userDef = UserDefaults.standard
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    func saveInt(intN: Int) {
        userDef.set(intN, forKey: "number")
    }
    
    func getInt() -> Int {
        return userDef.integer(forKey: "number")
    }
    
    func saveImage(image: UIImage) {
        let image = image.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
        userDef.set(image, forKey: "image")
        
    }
    
    func getImage() -> UIImage {
        let getString = userDef.string(forKey: "image")
        let imageData = Data(base64Encoded: getString!)
        let image = UIImage(data: imageData!)
        return image!
    }
}
