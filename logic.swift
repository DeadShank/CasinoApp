//
//  logic.swift
//  TZ-1
//
//  Created by Alex on 28.07.2022.
//

import Foundation
import UIKit

class GameLogic {
    var arrayRandom = [UIImage?]()
    var countCoin = 0
    var rateCount = 50
    var winIndex = [Int]()
    let winDouble = 1
    let winTreaple = 3
    let winQuatro = 5
    let winRampage = 10
    
    
    func checkWinning() {
        if arrayRandom[0] == arrayRandom[1] && arrayRandom[1] == arrayRandom[2] && arrayRandom[2] == arrayRandom[3] && arrayRandom[3] == arrayRandom[4] {
            print("0/1/2/3/5 da")
            countCoin = rateCount * winRampage
            winIndex = [0, 1, 2, 3, 4]
        
        } else if arrayRandom[5] == arrayRandom[6] && arrayRandom[6] == arrayRandom[7] && arrayRandom[7] == arrayRandom[8] && arrayRandom[8] == arrayRandom[9] {
            print("5/6/7/8/9 da")
            countCoin = rateCount * winRampage
            winIndex = [5, 6, 7, 8, 9]
        
        } else if arrayRandom[10] == arrayRandom[11] && arrayRandom[11] == arrayRandom[12] && arrayRandom[12] == arrayRandom[13] && arrayRandom[13] == arrayRandom[14] {
            print("10/11/12/13/14 da")
            countCoin = rateCount * winRampage
            winIndex = [10, 11, 12, 13, 14]
 //------------------------------------------------ Quatro
        } else if arrayRandom[0] == arrayRandom[1] && arrayRandom[1] == arrayRandom[2] && arrayRandom[2] == arrayRandom[3] {
            print("0/1/2/3 da")
            countCoin = rateCount * winQuatro
            winIndex = [0, 1, 2, 3]
        
        } else if arrayRandom[1] == arrayRandom[2] && arrayRandom[2] == arrayRandom[3] && arrayRandom[3] == arrayRandom[4] {
            print("1/2/3/4 da")
            countCoin = rateCount * winQuatro
            winIndex = [ 1, 2, 3, 4]
        
        } else if arrayRandom[5] == arrayRandom[6] && arrayRandom[6] == arrayRandom[7] && arrayRandom[7] == arrayRandom[8] {
            print("5/6/7/8 da")
            countCoin = rateCount * winQuatro
            winIndex = [5, 6, 7, 8]
        
        } else if arrayRandom[6] == arrayRandom[7] && arrayRandom[7] == arrayRandom[8] && arrayRandom[8] == arrayRandom[9] {
            print("6/7/8/9 da")
            countCoin = rateCount * winQuatro
            winIndex = [6, 7, 8, 9]
        
        } else if arrayRandom[10] == arrayRandom[11] && arrayRandom[11] == arrayRandom[12] && arrayRandom[12] == arrayRandom[13] {
            print("10/11/12/13 da")
            countCoin = rateCount * winQuatro
            winIndex = [10, 11, 12, 13]
        
        } else if arrayRandom[11] == arrayRandom[12] && arrayRandom[12] == arrayRandom[13] && arrayRandom[13] == arrayRandom[14] {
            print("11/12/13/14 da")
            countCoin = rateCount * winQuatro
            winIndex = [11, 12, 13, 14]
//------------------------------------------- treaple
        } else if arrayRandom[0] == arrayRandom[1] && arrayRandom[1] == arrayRandom[2] {
            print("0/1/2 da")
            countCoin = rateCount * winTreaple
            winIndex = [0, 1, 2]
            
        } else if arrayRandom[1] == arrayRandom[2] && arrayRandom[2] == arrayRandom[3] {
            print("1/2/3 da")
            countCoin = rateCount * winTreaple
            winIndex = [1, 2, 3]
            
        } else if arrayRandom[2] == arrayRandom[3] && arrayRandom[3] == arrayRandom[4] {
            print("2/3/4 da")
            countCoin = rateCount * winTreaple
            winIndex = [2, 3, 4]
            
        } else if arrayRandom[5] == arrayRandom[6] && arrayRandom[6] == arrayRandom[7] {
            print("5/6/7 da")
            countCoin = rateCount * winTreaple
            winIndex = [5, 6, 7]
            
        } else if arrayRandom[6] == arrayRandom[7]  && arrayRandom[7] == arrayRandom[8] {
            print("6/7/8 da")
            countCoin = rateCount * winTreaple
            winIndex = [6, 7, 8]
            
        } else if arrayRandom[7] == arrayRandom[8] && arrayRandom[8] == arrayRandom[9] {
            print("7/8/9 da")
            countCoin = rateCount * winTreaple
            winIndex = [7, 8, 9]
            
        } else if arrayRandom[10] == arrayRandom[11] && arrayRandom[11] == arrayRandom[12] {
            print("10/11/12 da")
            countCoin = rateCount * winTreaple
            winIndex = [10, 11, 12]
            
        } else if arrayRandom[11] == arrayRandom[12] && arrayRandom[12] == arrayRandom[13] {
            print("11/12/13 da")
            countCoin = rateCount * winTreaple
            winIndex = [11, 12, 13]
            
        } else if arrayRandom[12] == arrayRandom[13] && arrayRandom[13] == arrayRandom[14] {
            print("12/13/14 da")
            countCoin = rateCount * winTreaple
            winIndex = [12, 13, 14]
            
        } else if arrayRandom[0] == arrayRandom[5] && arrayRandom[5] == arrayRandom[10] {
            print("0/5/10 da")
            countCoin = rateCount * winTreaple
            winIndex = [0, 5, 10]
            
        } else if arrayRandom[1] == arrayRandom[6] && arrayRandom[6] == arrayRandom[11] {
            print("1/6/11 da")
            countCoin = rateCount * winTreaple
            winIndex = [1, 6, 11]
            
        } else if arrayRandom[2] == arrayRandom[7] && arrayRandom[7] == arrayRandom[12] {
            print("2/7/12 da")
            countCoin = rateCount * winTreaple
            winIndex = [2, 7, 12]
            
        } else if arrayRandom[3] == arrayRandom[8] && arrayRandom[8] == arrayRandom[13] {
            print("3/8/13 da")
            countCoin = rateCount * winTreaple
            winIndex = [3, 8, 13]
            
        } else if arrayRandom[4] == arrayRandom[9] && arrayRandom[9] == arrayRandom[14] {
            print("4/9/14 da")
            countCoin = rateCount * winTreaple
            winIndex = [4, 9, 14]
            
        } else if arrayRandom[0] == arrayRandom[6] && arrayRandom[6] == arrayRandom[12] {
            print("0/6/12 da")
            countCoin = rateCount * winTreaple
            winIndex = [0, 6, 12]
            
        } else if arrayRandom[1] == arrayRandom[7] && arrayRandom[7] == arrayRandom[13] {
            print("1/7/13 da")
            countCoin = rateCount * winTreaple
            winIndex = [1, 7, 13]
            
        } else if arrayRandom[2] == arrayRandom[8] && arrayRandom[8] == arrayRandom[14] {
            print("2/8/14 da")
            countCoin = rateCount * winTreaple
            winIndex = [2, 8, 14]
            
        } else if arrayRandom[4] == arrayRandom[8] && arrayRandom[8] == arrayRandom[12] {
            print("4/8/12 da")
            countCoin = rateCount * winTreaple
            winIndex = [4, 8, 12]
            
        } else if arrayRandom[3] == arrayRandom[7] && arrayRandom[7] == arrayRandom[11] {
            print("3/7/11 da")
            countCoin = rateCount * winTreaple
            winIndex = [3, 7, 11]
            
        } else if arrayRandom[2] == arrayRandom[6] && arrayRandom[6] == arrayRandom[10] {
            print("2/6/10 da")
            countCoin = rateCount * winTreaple
            winIndex = [2, 6, 10]
//------------------------------------------------------Double
        } else if arrayRandom[0] == arrayRandom[1] {
            print("0/1 da")
            countCoin = rateCount * winDouble
            winIndex = [0, 1]
        
        } else if arrayRandom[1] == arrayRandom[2] {
            print("1/2 da")
            countCoin = rateCount * winDouble
            winIndex = [1, 2]
        
        } else if arrayRandom[2] == arrayRandom[3] {
            print("2/3 da")
            countCoin = rateCount * winDouble
            winIndex = [2, 3]
        
        } else if arrayRandom[3] == arrayRandom[4] {
            print("3/4 da")
            countCoin = rateCount * winDouble
            winIndex = [3, 4]
        
        } else if arrayRandom[5] == arrayRandom[6] {
            print("5/6 da")
            countCoin = rateCount * winDouble
            winIndex = [5, 6]
        
        } else if arrayRandom[6] == arrayRandom[7] {
            print("6/7 da")
            countCoin = rateCount * winDouble
            winIndex = [6, 7]
        
        } else if arrayRandom[7] == arrayRandom[8] {
            print("7/8 da")
            countCoin = rateCount * winDouble
            winIndex = [7, 8]
        
        } else if arrayRandom[8] == arrayRandom[9] {
            print("8/9 da")
            countCoin = rateCount * 1
            winIndex = [8, 9]
        
        } else if arrayRandom[10] == arrayRandom[11] {
            print("10/11 da")
            countCoin = rateCount * winDouble
            winIndex = [10, 11]
            
        } else if arrayRandom[11] == arrayRandom[12] {
            print("11/12 da")
            countCoin = rateCount * winDouble
            winIndex = [11, 12]
        
        } else if arrayRandom[12] == arrayRandom[13] {
            print("12/13 da")
            countCoin = rateCount * winDouble
            winIndex = [12, 13]
        
        } else if arrayRandom[13] == arrayRandom[14] {
            print("13/14 da")
            countCoin = rateCount * winDouble
            winIndex = [13, 14]
            
        } else if arrayRandom[0] == arrayRandom[5] {
            print("0/5 da")
            countCoin = rateCount * winDouble
            winIndex = [0, 5]
            
        } else if arrayRandom[1] == arrayRandom[6] {
            print("1/6 da")
            countCoin = rateCount * winDouble
            winIndex = [1, 6]
            
        }  else if arrayRandom[2] == arrayRandom[7] {
            print("2/7 da")
            countCoin = rateCount * winDouble
            winIndex = [2, 7]
            
        }  else if arrayRandom[3] == arrayRandom[8] {
            print("3/8 da")
            countCoin = rateCount * winDouble
            winIndex = [3, 8]
            
        } else if arrayRandom[4] == arrayRandom[9] {
            print("4/9 da")
            countCoin = rateCount * winDouble
            winIndex = [4, 9]
            
        }  else if arrayRandom[5] == arrayRandom[10] {
            print("5/10 da")
            countCoin = rateCount * winDouble
            winIndex = [5, 10]
            
        } else if arrayRandom[6] == arrayRandom[11] {
            print("6/11 da")
            countCoin = rateCount * 1
            winIndex = [6, 11]
            
        } else if arrayRandom[7] == arrayRandom[12] {
            print("7/12 da")
            countCoin = rateCount * winDouble
            winIndex = [7, 12]
            
        } else if arrayRandom[8] == arrayRandom[13] {
            print("8/13 da")
            countCoin = rateCount * winDouble
            winIndex = [8, 13]
            
        } else if arrayRandom[9] == arrayRandom[14] {
            print("9/14 da")
            countCoin = rateCount * winDouble
            winIndex = [9, 14]
            
        } else if arrayRandom[0] == arrayRandom[6] {
            print("0/6 da")
            countCoin = rateCount * winDouble
            winIndex = [0, 6]
        } else if arrayRandom[1] == arrayRandom[7] {
            print("1/7 da")
            countCoin = rateCount * winDouble
            winIndex = [1, 7]
        } else if arrayRandom[2] == arrayRandom[8] {
            print("2/8 da")
            countCoin = rateCount * winDouble
            winIndex = [2, 8]
        } else if arrayRandom[3] == arrayRandom[9] {
            print("3/9 da")
            countCoin = rateCount * winDouble
            winIndex = [3, 9]
        } else if arrayRandom[4] == arrayRandom[8] {
            print("4/8 da")
            countCoin = rateCount * winDouble
            winIndex = [4, 8]
        } else if arrayRandom[3] == arrayRandom[7] {
            print("3/7 da")
            countCoin = rateCount * winDouble
            winIndex = [3, 7]
        } else if arrayRandom[2] == arrayRandom[6] {
            print("2/6 da")
            countCoin = rateCount * winDouble
            winIndex = [2, 6]
        } else if arrayRandom[1] == arrayRandom[5] {
            print("1/5 da")
            countCoin = rateCount * winDouble
            winIndex = [1, 5]
        } else if arrayRandom[5] == arrayRandom[11] {
            print("5/11 da")
            countCoin = rateCount * winDouble
            winIndex = [5, 11]
        } else if arrayRandom[6] == arrayRandom[12] {
            print("6/12 da")
            countCoin = rateCount * winDouble
            winIndex = [6, 12]
        } else if arrayRandom[7] == arrayRandom[13] {
            print("7/13 da")
            countCoin = rateCount * winDouble
            winIndex = [7, 13]
        } else if arrayRandom[8] == arrayRandom[14] {
            print("8/14 da")
            countCoin = rateCount * winDouble
            winIndex = [8, 14]
        } else if arrayRandom[9] == arrayRandom[13] {
            print("9/13 da")
            countCoin = rateCount * winDouble
            winIndex = [9, 13]
        }  else if arrayRandom[8] == arrayRandom[12] {
            print("8/12 da")
            countCoin = rateCount * winDouble
            winIndex = [8, 12]
        } else if arrayRandom[7] == arrayRandom[11] {
            print("7/11 da")
            countCoin = rateCount * winDouble
            winIndex = [7, 11]
        } else if arrayRandom[6] == arrayRandom[10] {
            print("6/10 da")
            countCoin = rateCount * winDouble
            winIndex = [6, 10]
        }
    }
    
    
}
