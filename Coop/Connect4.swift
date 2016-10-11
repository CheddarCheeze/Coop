//
//  Connect4.swift
//  Coop
//
//  Created by Adrian Ordorica on 2/20/16.
//  Copyright © 2016 Adrian Ordorica. All rights reserved.
//

import Foundation
import UIKit

class Connect4ViewController: ViewController {
    
    @IBOutlet var connectImg1: UIImageView!
    @IBOutlet var connectImg2: UIImageView!
    @IBOutlet var connectImg3: UIImageView!
    @IBOutlet var connectImg4: UIImageView!
    @IBOutlet var connectImg5: UIImageView!
    @IBOutlet var connectImg6: UIImageView!
    @IBOutlet var connectImg7: UIImageView!
    @IBOutlet var connectImg8: UIImageView!
    @IBOutlet var connectImg9: UIImageView!
    @IBOutlet var connectImg10: UIImageView!
    @IBOutlet var connectImg11: UIImageView!
    @IBOutlet var connectImg12: UIImageView!
    @IBOutlet var connectImg13: UIImageView!
    @IBOutlet var connectImg14: UIImageView!
    @IBOutlet var connectImg15: UIImageView!
    @IBOutlet var connectImg16: UIImageView!
    @IBOutlet var connectImg17: UIImageView!
    @IBOutlet var connectImg18: UIImageView!
    @IBOutlet var connectImg19: UIImageView!
    @IBOutlet var connectImg20: UIImageView!
    @IBOutlet var connectImg21: UIImageView!
    @IBOutlet var connectImg22: UIImageView!
    @IBOutlet var connectImg23: UIImageView!
    @IBOutlet var connectImg24: UIImageView!
    @IBOutlet var connectImg25: UIImageView!
    @IBOutlet var connectImg26: UIImageView!
    @IBOutlet var connectImg27: UIImageView!
    @IBOutlet var connectImg28: UIImageView!
    @IBOutlet var connectImg29: UIImageView!
    @IBOutlet var connectImg30: UIImageView!
    @IBOutlet var connectImg31: UIImageView!
    @IBOutlet var connectImg32: UIImageView!
    @IBOutlet var connectImg33: UIImageView!
    @IBOutlet var connectImg34: UIImageView!
    @IBOutlet var connectImg35: UIImageView!
    @IBOutlet var connectImg36: UIImageView!
    @IBOutlet var connectImg37: UIImageView!
    @IBOutlet var connectImg38: UIImageView!
    @IBOutlet var connectImg39: UIImageView!
    @IBOutlet var connectImg40: UIImageView!
    @IBOutlet var connectImg41: UIImageView!
    @IBOutlet var connectImg42: UIImageView!
    
    @IBOutlet var connectBtn1: UIButton!
    @IBOutlet var connectBtn2: UIButton!
    @IBOutlet var connectBtn3: UIButton!
    @IBOutlet var connectBtn4: UIButton!
    @IBOutlet var connectBtn5: UIButton!
    @IBOutlet var connectBtn6: UIButton!
    @IBOutlet var connectBtn7: UIButton!
    
    @IBOutlet var userMessage: UILabel!
    
    @IBOutlet var resetBtn: UIButton!
    
    var plays = [Int: Int]()	// Keeps track of all the moves
    var done = false				// Flag for when the game is done
    var aiDeciding = false			// Flag to give computer time to think
    var m = 0
    var n = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    
    // Main function that marks players move and allows for AI to take a turn
    @IBAction func UIButtonClicked(_ sender: UIButton) {
        userMessage.isHidden = true
        var play = plays[sender.tag]
        
        if (plays[sender.tag] == nil) && (aiDeciding != true) && (done != true) {
            setImageForSpot(sender.tag, player:1)
            
            switch sender.tag % 7 {
            case 0:
                s += 1
            case 1:
                m += 1
            case 2:
                n += 1
            case 3:
                o += 1
            case 4:
                p += 1
            case 5:
                q += 1
            default:
                r += 1
            }
        }
        else if (isOccupied(sender.tag) == true) {
            var j = 0
            while (isOccupied(sender.tag - (j * 7)) == true) {
                j = j + 1
            }
            setImageForSpot(sender.tag - (j * 7), player: 1)
            switch sender.tag % 7 {
            case 0:
                s += 1
            case 1:
                m += 1
            case 2:
                n += 1
            case 3:
                o += 1
            case 4:
                p += 1
            case 5:
                q += 1
            default:
                r += 1
            }
        }
        checkForWin()
        aiTurn()
    }
    
    // Marks the image for the spot chosen by either player
    func setImageForSpot(_ spot: Int, player: Int) {
        let playerMark = player == 1 ? "reddot" : "bluedot"
        plays[spot] = player
        switch spot {
        case 1:
            connectImg1.image = UIImage(named: playerMark)
        case 2:
            connectImg2.image = UIImage(named: playerMark)
        case 3:
            connectImg3.image = UIImage(named: playerMark)
        case 4:
            connectImg4.image = UIImage(named: playerMark)
        case 5:
            connectImg5.image = UIImage(named: playerMark)
        case 6:
            connectImg6.image = UIImage(named: playerMark)
        case 7:
            connectImg7.image = UIImage(named: playerMark)
        case 8:
            connectImg8.image = UIImage(named: playerMark)
        case 9:
            connectImg9.image = UIImage(named: playerMark)
        case 10:
            connectImg10.image = UIImage(named: playerMark)
        case 11:
            connectImg11.image = UIImage(named: playerMark)
        case 12:
            connectImg12.image = UIImage(named: playerMark)
        case 13:
            connectImg13.image = UIImage(named: playerMark)
        case 14:
            connectImg14.image = UIImage(named: playerMark)
        case 15:
            connectImg15.image = UIImage(named: playerMark)
        case 16:
            connectImg16.image = UIImage(named: playerMark)
        case 17:
            connectImg17.image = UIImage(named: playerMark)
        case 18:
            connectImg18.image = UIImage(named: playerMark)
        case 19:
            connectImg19.image = UIImage(named: playerMark)
        case 20:
            connectImg20.image = UIImage(named: playerMark)
        case 21:
            connectImg21.image = UIImage(named: playerMark)
        case 22:
            connectImg22.image = UIImage(named: playerMark)
        case 23:
            connectImg23.image = UIImage(named: playerMark)
        case 24:
            connectImg24.image = UIImage(named: playerMark)
        case 25:
            connectImg25.image = UIImage(named: playerMark)
        case 26:
            connectImg26.image = UIImage(named: playerMark)
        case 27:
            connectImg27.image = UIImage(named: playerMark)
        case 28:
            connectImg28.image = UIImage(named: playerMark)
        case 29:
            connectImg29.image = UIImage(named: playerMark)
        case 30:
            connectImg30.image = UIImage(named: playerMark)
        case 31:
            connectImg31.image = UIImage(named: playerMark)
        case 32:
            connectImg32.image = UIImage(named: playerMark)
        case 33:
            connectImg33.image = UIImage(named: playerMark)
        case 34:
            connectImg34.image = UIImage(named: playerMark)
        case 35:
            connectImg35.image = UIImage(named: playerMark)
        case 36:
            connectImg36.image = UIImage(named: playerMark)
        case 37:
            connectImg37.image = UIImage(named: playerMark)
        case 38:
            connectImg38.image = UIImage(named: playerMark)
        case 39:
            connectImg39.image = UIImage(named: playerMark)
        case 40:
            connectImg40.image = UIImage(named: playerMark)
        case 41:
            connectImg41.image = UIImage(named: playerMark)
        default:
            connectImg42.image = UIImage(named: playerMark)
        }
    }
    
    // Reset button functionality to reset the game
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        done = false
        resetBtn.isHidden = true
        userMessage.isHidden = true
        reset()
    }
    
    // Resets the board
    func reset() {
        plays = [:]
        connectImg1.image = nil
        connectImg2.image = nil
        connectImg3.image = nil
        connectImg4.image = nil
        connectImg5.image = nil
        connectImg6.image = nil
        connectImg7.image = nil
        connectImg8.image = nil
        connectImg9.image = nil
        connectImg10.image = nil
        connectImg11.image = nil
        connectImg12.image = nil
        connectImg13.image = nil
        connectImg14.image = nil
        connectImg15.image = nil
        connectImg16.image = nil
        connectImg17.image = nil
        connectImg18.image = nil
        connectImg19.image = nil
        connectImg20.image = nil
        connectImg21.image = nil
        connectImg22.image = nil
        connectImg23.image = nil
        connectImg24.image = nil
        connectImg25.image = nil
        connectImg26.image = nil
        connectImg27.image = nil
        connectImg28.image = nil
        connectImg29.image = nil
        connectImg30.image = nil
        connectImg31.image = nil
        connectImg32.image = nil
        connectImg33.image = nil
        connectImg34.image = nil
        connectImg35.image = nil
        connectImg36.image = nil
        connectImg37.image = nil
        connectImg38.image = nil
        connectImg39.image = nil
        connectImg40.image = nil
        connectImg41.image = nil
        connectImg42.image = nil
        m = 0
        n = 0
        o = 0
        p = 0
        q = 0
        r = 0
        s = 0
    }
    
    // Checks the board to see if there is a winner, checked after every move
    func checkForWin(){
        let whoWon = ["AI":0,"Human":1]
        for(key,value) in whoWon {
            if((plays[1] == value && plays[2] == value && plays[3] == value && plays[4] == value) || // across the top
                (plays[2] == value && plays[3] == value && plays[4] == value && plays[5] == value) || // across the top
                (plays[3] == value && plays[4] == value && plays[5] == value && plays[6] == value) || // across the top
                (plays[4] == value && plays[5] == value && plays[6] == value && plays[7] == value) || // across the top
                (plays[8] == value && plays[9] == value && plays[10] == value && plays[11] == value) || // across the 2nd row
                (plays[9] == value && plays[10] == value && plays[11] == value && plays[12] == value) || // across the 2nd row
                (plays[10] == value && plays[11] == value && plays[12] == value && plays[13] == value) || // across the 2nd row
                (plays[11] == value && plays[12] == value && plays[13] == value && plays[15] == value) || // across the 2nd row
                (plays[15] == value && plays[16] == value && plays[17] == value && plays[18] == value) || // across the 3rd row
                (plays[16] == value && plays[17] == value && plays[18] == value && plays[19] == value) || // across the 3rd row
                (plays[17] == value && plays[18] == value && plays[19] == value && plays[20] == value) || // across the 3rd row
                (plays[18] == value && plays[19] == value && plays[20] == value && plays[21] == value) || // across the 3rd row
                (plays[22] == value && plays[23] == value && plays[24] == value && plays[25] == value) || // across the 4th row
                (plays[23] == value && plays[24] == value && plays[25] == value && plays[26] == value) || // across the 4th row
                (plays[24] == value && plays[25] == value && plays[26] == value && plays[27] == value) || // across the 4th row
                (plays[25] == value && plays[26] == value && plays[27] == value && plays[28] == value) || // across the 4th row
                (plays[29] == value && plays[30] == value && plays[31] == value && plays[32] == value) || // across the 5th row
                (plays[30] == value && plays[31] == value && plays[32] == value && plays[33] == value) || // across the 5th row
                (plays[31] == value && plays[32] == value && plays[33] == value && plays[34] == value) || // across the 5th row
                (plays[32] == value && plays[33] == value && plays[34] == value && plays[35] == value) || // across the 5th row
                (plays[36] == value && plays[37] == value && plays[38] == value && plays[39] == value) || // across the 6th row
                (plays[37] == value && plays[38] == value && plays[39] == value && plays[40] == value) || // across the 6th row
                (plays[38] == value && plays[39] == value && plays[40] == value && plays[41] == value) || // across the 6th row
                (plays[39] == value && plays[40] == value && plays[41] == value && plays[42] == value) || // across the 6th row
                (plays[1] == value && plays[8] == value && plays[15] == value && plays[22] == value) || // down the 1st column
                (plays[2] == value && plays[9] == value && plays[16] == value && plays[23] == value) || // down the 2nd column
                (plays[3] == value && plays[10] == value && plays[17] == value && plays[24] == value) || // down the 3rd column
                (plays[4] == value && plays[11] == value && plays[18] == value && plays[25] == value) || // down the 4th column
                (plays[5] == value && plays[12] == value && plays[19] == value && plays[26] == value) || // down the 5th column
                (plays[6] == value && plays[13] == value && plays[20] == value && plays[27] == value) || // down the 6th column
                (plays[7] == value && plays[14] == value && plays[21] == value && plays[28] == value) || // down the 7th column
                (plays[8] == value && plays[15] == value && plays[22] == value && plays[29] == value) || // down the 1st column
                (plays[9] == value && plays[16] == value && plays[23] == value && plays[30] == value) || // down the 2nd column
                (plays[10] == value && plays[17] == value && plays[24] == value && plays[31] == value) || // down the 3rd column
                (plays[11] == value && plays[18] == value && plays[25] == value && plays[32] == value) || // down the 4th column
                (plays[12] == value && plays[19] == value && plays[26] == value && plays[33] == value) || // down the 5th column
                (plays[13] == value && plays[20] == value && plays[27] == value && plays[34] == value) || // down the 6th column
                (plays[14] == value && plays[21] == value && plays[28] == value && plays[35] == value) || // down the 7th column
                (plays[15] == value && plays[22] == value && plays[29] == value && plays[36] == value) || // down the 1st column
                (plays[16] == value && plays[23] == value && plays[30] == value && plays[37] == value) || // down the 2nd column
                (plays[17] == value && plays[24] == value && plays[31] == value && plays[38] == value) || // down the 3rd column
                (plays[18] == value && plays[25] == value && plays[32] == value && plays[39] == value) || // down the 4th column
                (plays[19] == value && plays[26] == value && plays[33] == value && plays[40] == value) || // down the 5th column
                (plays[20] == value && plays[27] == value && plays[34] == value && plays[41] == value) || // down the 6th column
                (plays[21] == value && plays[28] == value && plays[35] == value && plays[42] == value) || // down the 7th column
                (plays[1] == value && plays[9] == value && plays[17] == value && plays[25] == value) || // diag left right
                (plays[2] == value && plays[10] == value && plays[18] == value && plays[26] == value) || // diag left right
                (plays[3] == value && plays[11] == value && plays[19] == value && plays[27] == value) || // diag left right
                (plays[4] == value && plays[12] == value && plays[20] == value && plays[28] == value) || // diag left right
                (plays[8] == value && plays[16] == value && plays[24] == value && plays[32] == value) || // diag left right
                (plays[9] == value && plays[17] == value && plays[25] == value && plays[33] == value) || // diag left right
                (plays[10] == value && plays[18] == value && plays[26] == value && plays[34] == value) || // diag left right
                (plays[11] == value && plays[19] == value && plays[27] == value && plays[35] == value) || // diag left right
                (plays[15] == value && plays[23] == value && plays[31] == value && plays[39] == value) || // diag left right
                (plays[16] == value && plays[24] == value && plays[32] == value && plays[40] == value) || // diag left right
                (plays[17] == value && plays[25] == value && plays[33] == value && plays[41] == value) || // diag left right
                (plays[18] == value && plays[26] == value && plays[34] == value && plays[42] == value) || // diag left right
                (plays[4] == value && plays[10] == value && plays[16] == value && plays[22] == value) || // diag right left
                (plays[5] == value && plays[11] == value && plays[17] == value && plays[23] == value) || // diag right left
                (plays[6] == value && plays[12] == value && plays[18] == value && plays[24] == value) || // diag right left
                (plays[7] == value && plays[13] == value && plays[19] == value && plays[25] == value) || // diag right left
                (plays[11] == value && plays[17] == value && plays[23] == value && plays[29] == value) || // diag right left
                (plays[12] == value && plays[18] == value && plays[24] == value && plays[30] == value) || // diag right left
                (plays[13] == value && plays[19] == value && plays[25] == value && plays[31] == value) || // diag right left
                (plays[14] == value && plays[20] == value && plays[26] == value && plays[32] == value) || // diag right left
                (plays[18] == value && plays[24] == value && plays[30] == value && plays[36] == value) || // diag right left
                (plays[19] == value && plays[25] == value && plays[31] == value && plays[37] == value) || // diag right left
                (plays[20] == value && plays[26] == value && plays[32] == value && plays[38] == value) || // diag right left
                (plays[21] == value && plays[27] == value && plays[33] == value && plays[39] == value) // diag right left
                ) {
                    userMessage.isHidden = false
                    userMessage.text = "Looks like \(key) won!"
                    resetBtn.isHidden = false
                    done = true
                }
        }
    }
    
    // The next 69 functions check all possible ways to win
    func check1Top(value: Int) -> (location: String, pattern: String) {return ("1top", checkFor(value, inList: [1,2,3,4]))}
    func check2Top(value: Int) -> (location: String, pattern: String) {return ("2top", checkFor(value, inList: [2,3,4,5]))}
    func check3Top(value: Int) -> (location: String, pattern: String) {return ("3top", checkFor(value, inList: [1,2,3,4,5,6]))}
    func check4Top(value: Int) -> (location: String, pattern: String) {return ("4top", checkFor(value, inList: [4,5,6,7]))}
    
    func check5Top(value: Int) -> (location: String, pattern: String) {return ("5top", checkFor(value, inList: [8,9,10,11]))}
    func check6Top(value: Int) -> (location: String, pattern: String) {return ("6top", checkFor(value, inList: [9,10,11,12]))}
    func check7Top(value: Int) -> (location: String, pattern: String) {return ("7top", checkFor(value, inList: [10,11,12,13]))}
    func check8Top(value: Int) -> (location: String, pattern: String) {return ("8top", checkFor(value, inList: [11,12,13,14]))}
    
    func check9Top(value: Int) -> (location: String, pattern: String) {return ("9top", checkFor(value, inList: [15,16,17,18]))}
    func check10Top(value: Int) -> (location: String, pattern: String) {return ("10top", checkFor(value, inList: [16,17,18,19]))}
    func check11Top(value: Int) -> (location: String, pattern: String) {return ("11top", checkFor(value, inList: [17,18,19,20]))}
    func check12Top(value: Int) -> (location: String, pattern: String) {return ("12top", checkFor(value, inList: [18,19,20,21]))}
    
    func check13Top(value: Int) -> (location: String, pattern: String) {return ("13top", checkFor(value, inList: [22,23,24,25]))}
    func check14Top(value: Int) -> (location: String, pattern: String) {return ("14top", checkFor(value, inList: [23,24,25,26]))}
    func check15Top(value: Int) -> (location: String, pattern: String) {return ("15top", checkFor(value, inList: [24,25,26,27]))}
    func check16Top(value: Int) -> (location: String, pattern: String) {return ("16top", checkFor(value, inList: [25,26,27,28]))}
    
    func check17Top(value: Int) -> (location: String, pattern: String) {return ("17top", checkFor(value, inList: [29,30,31,32]))}
    func check18Top(value: Int) -> (location: String, pattern: String) {return ("18top", checkFor(value, inList: [30,31,32,33]))}
    func check19Top(value: Int) -> (location: String, pattern: String) {return ("19top", checkFor(value, inList: [31,32,33,34]))}
    func check20Top(value: Int) -> (location: String, pattern: String) {return ("20top", checkFor(value, inList: [32,33,34,35]))}
    
    func check21Top(value: Int) -> (location: String, pattern: String) {return ("21top", checkFor(value, inList: [36,37,38,39]))}
    func check22Top(value: Int) -> (location: String, pattern: String) {return ("22top", checkFor(value, inList: [37,38,39,40]))}
    func check23Top(value: Int) -> (location: String, pattern: String) {return ("23top", checkFor(value, inList: [38,39,40,41]))}
    func check24Top(value: Int) -> (location: String, pattern: String) {return ("24top", checkFor(value, inList: [39,40,41,42]))}
    
    func check25Down(value: Int) -> (location: String, pattern: String) {return ("25down", checkFor(value, inList: [1,8,15,22]))}
    func check26Down(value: Int) -> (location: String, pattern: String) {return ("26down", checkFor(value, inList: [2,9,16,23]))}
    func check27Down(value: Int) -> (location: String, pattern: String) {return ("27down", checkFor(value, inList: [3,10,17,24]))}
    func check28Down(value: Int) -> (location: String, pattern: String) {return ("28down", checkFor(value, inList: [4,11,18,25]))}
    func check29Down(value: Int) -> (location: String, pattern: String) {return ("29down", checkFor(value, inList: [5,12,19,26]))}
    func check30Down(value: Int) -> (location: String, pattern: String) {return ("30down", checkFor(value, inList: [6,13,20,27]))}
    func check31Down(value: Int) -> (location: String, pattern: String) {return ("31down", checkFor(value, inList: [7,14,21,28]))}
    
    func check32Down(value: Int) -> (location: String, pattern: String) {return ("32down", checkFor(value, inList: [8,15,22,29]))}
    func check33Down(value: Int) -> (location: String, pattern: String) {return ("33down", checkFor(value, inList: [9,16,23,30]))}
    func check34Down(value: Int) -> (location: String, pattern: String) {return ("34down", checkFor(value, inList: [10,17,24,31]))}
    func check35Down(value: Int) -> (location: String, pattern: String) {return ("35down", checkFor(value, inList: [11,18,25,32]))}
    func check36Down(value: Int) -> (location: String, pattern: String) {return ("36down", checkFor(value, inList: [12,19,26,33]))}
    func check37Down(value: Int) -> (location: String, pattern: String) {return ("37down", checkFor(value, inList: [13,20,27,34]))}
    func check38Down(value: Int) -> (location: String, pattern: String) {return ("38down", checkFor(value, inList: [14,21,28,35]))}
    
    func check39Down(value: Int) -> (location: String, pattern: String) {return ("39down", checkFor(value, inList: [15,22,29,36]))}
    func check40Down(value: Int) -> (location: String, pattern: String) {return ("40down", checkFor(value, inList: [16,23,30,37]))}
    func check41Down(value: Int) -> (location: String, pattern: String) {return ("41down", checkFor(value, inList: [17,24,31,38]))}
    func check42Down(value: Int) -> (location: String, pattern: String) {return ("42down", checkFor(value, inList: [18,25,32,39]))}
    func check43Down(value: Int) -> (location: String, pattern: String) {return ("43down", checkFor(value, inList: [19,26,33,40]))}
    func check44Down(value: Int) -> (location: String, pattern: String) {return ("44down", checkFor(value, inList: [20,27,34,41]))}
    func check45Down(value: Int) -> (location: String, pattern: String) {return ("45down", checkFor(value, inList: [21,28,35,42]))}
    
    func check46DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("46diagLeftRight", checkFor(value, inList: [1,9,17,25]))}
    func check47DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("47diagLeftRight", checkFor(value, inList: [2,10,18,26]))}
    func check48DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("48diagLeftRight", checkFor(value, inList: [3,11,19,27]))}
    func check49DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("49diagLeftRight", checkFor(value, inList: [4,12,20,28]))}
    
    func check50DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("50diagLeftRight", checkFor(value, inList: [8,16,24,32]))}
    func check51DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("51diagLeftRight", checkFor(value, inList: [9,17,25,33]))}
    func check52DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("52diagLeftRight", checkFor(value, inList: [10,18,26,34]))}
    func check53DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("53diagLeftRight", checkFor(value, inList: [11,19,27,35]))}
    
    func check54DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("54diagLeftRight", checkFor(value, inList: [15,23,31,39]))}
    func check55DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("55diagLeftRight", checkFor(value, inList: [16,24,32,40]))}
    func check56DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("56diagLeftRight", checkFor(value, inList: [17,25,33,41]))}
    func check57DiagLeftRight(value: Int) -> (location: String, pattern: String) {return ("57diagLeftRight", checkFor(value, inList: [18,26,34,42]))}
    
    func check58DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag58RightLeft", checkFor(value, inList: [4,10,16,22]))}
    func check59DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag59RightLeft", checkFor(value, inList: [5,11,17,23]))}
    func check60DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag60RightLeft", checkFor(value, inList: [6,12,18,24]))}
    func check61DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag61RightLeft", checkFor(value, inList: [7,13,19,25]))}
    
    func check62DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag62RightLeft", checkFor(value, inList: [11,17,23,29]))}
    func check63DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag63RightLeft", checkFor(value, inList: [12,18,24,30]))}
    func check64DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag64RightLeft", checkFor(value, inList: [13,19,25,31]))}
    func check65DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag65RightLeft", checkFor(value, inList: [14,20,26,32]))}
    
    func check66DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag66RightLeft", checkFor(value, inList: [18,24,30,36]))}
    func check67DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag67RightLeft", checkFor(value, inList: [19,25,31,37]))}
    func check68DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag68RightLeft", checkFor(value, inList: [20,26,32,38]))}
    func check69DiagRightLeft(value: Int) -> (location: String, pattern: String) {return ("diag69RightLeft", checkFor(value, inList: [21,27,33,39]))}
    
    // Checks the board and confirms whether the spot was already played or not
    func checkFor(_ value: Int, inList: [Int]) -> String {
        var conclusion = ""
        for cell in inList {
            if plays[cell] == value {
                conclusion += "1"
            }
            else {
                conclusion += "0"
            }
        }
        return conclusion
    }
    
    // Checks to see if there is two in a row so the AI can make a block or win
    func rowCheck(value: Int) -> (location: String, pattern: String)? {
        let acceptableFinds = ["0111", "1011", "1101", "1110"]
        let findFuncs = [
            check1Top,
            check2Top,
            check3Top,
            check4Top,
            check5Top,
            check6Top,
            check7Top,
            check8Top,
            check9Top,
            check10Top,
            check11Top,
            check12Top,
            check13Top,
            check14Top,
            check15Top,
            check16Top,
            check17Top,
            check18Top,
            check19Top,
            check20Top,
            check21Top,
            check22Top,
            check23Top,
            check24Top,
            check25Down,
            check26Down,
            check27Down,
            check28Down,
            check29Down,
            check30Down,
            check31Down,
            check32Down,
            check33Down,
            check34Down,
            check35Down,
            check36Down,
            check37Down,
            check38Down,
            check39Down,
            check40Down,
            check41Down,
            check42Down,
            check43Down,
            check44Down,
            check45Down,
            check46DiagLeftRight,
            check47DiagLeftRight,
            check48DiagLeftRight,
            check49DiagLeftRight,
            check50DiagLeftRight,
            check51DiagLeftRight,
            check52DiagLeftRight,
            check53DiagLeftRight,
            check54DiagLeftRight,
            check55DiagLeftRight,
            check56DiagLeftRight,
            check57DiagLeftRight,
            check58DiagRightLeft,
            check59DiagRightLeft,
            check60DiagRightLeft,
            check61DiagRightLeft,
            check62DiagRightLeft,
            check63DiagRightLeft,
            check64DiagRightLeft,
            check65DiagRightLeft,
            check66DiagRightLeft,
            check67DiagRightLeft,
            check68DiagRightLeft,
            check69DiagRightLeft
        ]
        for algorithm in findFuncs {
            let algorithmResults = algorithm(value)
            //if find(acceptableFinds, algorithmResults.pattern) {
            let indexOfA = acceptableFinds.index(of: algorithmResults.pattern)
            if (indexOfA != nil) {
                return algorithmResults
            }
        }
        return nil
    }
    
    // Checks to see if a certain spot is occupied
    func isOccupied(_ spot: Int) -> Bool {
        if (plays[spot] == nil){
            return false
        }
        else {
            return true
        }
    }
    
    // Function the AI steps through to decide where to play on the board
    func aiTurn(){
        if done {
            return
        }
        aiDeciding = true
        
        //  We (the computer) have three in a row
        if let result = rowCheck(value: 0) {
            var whereToPlayResult = whereToPlay(result.location, pattern: result.pattern)
            if !isOccupied(whereToPlayResult) {
                setImageForSpot(whereToPlayResult, player: 0)
                aiDeciding = false
                checkForWin()
                return
            }
        }
        
        //  We (the player) have three in a row
        if let result = rowCheck(value: 1) {
            var whereToPlayResult = whereToPlay(result.location, pattern: result.pattern)
            if !isOccupied(whereToPlayResult) {
                setImageForSpot(whereToPlayResult, player: 0)
                aiDeciding = false
                checkForWin()
                return
            }
        }
        
        // is center available?
        if !isOccupied(39) {
            setImageForSpot(39, player: 0)
            aiDeciding = false
            checkForWin()
            return
        }
        
        func makeList(_ n:Int ) -> [Int] {
            var result:[Int] = []
            for i in 0..<n {
                result.append(Int(arc4random_uniform(7)))
            }
            return result
        }
        
        func firstAvailable(isCorner: Bool) -> Int? {
            let randy = makeList(7)
            let spots = [(36 - (m*7)),(37 - (n*7)),(38 - (o*7)),(39 - (p*7)),(40 - (q*7)),(41 - (r*7)),(42 - (s*7))]
            for rando in randy {
                //for spot in spots {
                    if !isOccupied(spots[rando]) {
                        switch spots[rando] % 7 {
                        case 0:
                            s += 1
                        case 1:
                            m += 1
                        case 2:
                            n += 1
                        case 3:
                            o += 1
                        case 4:
                            p += 1
                        case 5:
                            q += 1
                        default:
                            r += 1
                        }
                        return spots[rando]
                    }
                //}
            }
            
            return nil
        }
        
        // is a corner available?
        if let cornerAvailable = firstAvailable(isCorner: true) {
            setImageForSpot(cornerAvailable, player: 0)
            aiDeciding = false
            checkForWin()
            return
        }
        
        // is a side available?
        if let sideAvailable = firstAvailable(isCorner: false) {
            setImageForSpot(sideAvailable, player: 0)
            aiDeciding = false
            checkForWin()
            return
        }

        
        userMessage.isHidden = false
        userMessage.text = "Looks like it was a tie!"
        
        reset()
        
        aiDeciding = false
    }
    
    // Algorithm checking board of various patterns to decide where to play
    func whereToPlay(_ location: String, pattern: String) -> Int {
        let firPattern = "0111"
        let secPattern = "1011"
        let thiPattern = "1101"
        //let fouPattern = "1110"
        
        switch location {
        case "1top":
            if pattern == firPattern {return 1}
            else if pattern == secPattern {return 2}
            else if pattern == thiPattern {return 3}
            else {return 4}
        case "2top":
            if pattern == firPattern {return 2}
            else if pattern == secPattern {return 3}
            else if pattern == thiPattern {return 4}
            else {return 5}
        case "3top":
            if pattern == firPattern {return 3}
            else if pattern == secPattern {return 4}
            else if pattern == thiPattern {return 5}
            else {return 6}
        case "4top":
            if pattern == firPattern {return 4}
            else if pattern == secPattern {return 5}
            else if pattern == thiPattern {return 6}
            else {return 7}
        case "5top":
            if pattern == firPattern {return 8}
            else if pattern == secPattern {return 9}
            else if pattern == thiPattern {return 10}
            else {return 11}
        case "6top":
            if pattern == firPattern {return 9}
            else if pattern == secPattern {return 10}
            else if pattern == thiPattern {return 11}
            else {return 12}
        case "7top":
            if pattern == firPattern {return 10}
            else if pattern == secPattern {return 11}
            else if pattern == thiPattern {return 12}
            else {return 13}
        case "8top":
            if pattern == firPattern {return 11}
            else if pattern == secPattern {return 12}
            else if pattern == thiPattern {return 13}
            else {return 14}
        case "9top":
            if pattern == firPattern {return 15}
            else if pattern == secPattern {return 16}
            else if pattern == thiPattern {return 17}
            else {return 18}
        case "10top":
            if pattern == firPattern {return 16}
            else if pattern == secPattern {return 17}
            else if pattern == thiPattern {return 18}
            else {return 19}
        case "11top":
            if pattern == firPattern {return 17}
            else if pattern == secPattern {return 18}
            else if pattern == thiPattern {return 19}
            else {return 20}
        case "12top":
            if pattern == firPattern {return 18}
            else if pattern == secPattern {return 19}
            else if pattern == thiPattern {return 20}
            else {return 21}
        case "13top":
            if pattern == firPattern {return 22}
            else if pattern == secPattern {return 23}
            else if pattern == thiPattern {return 24}
            else {return 25}
        case "14top":
            if pattern == firPattern {return 23}
            else if pattern == secPattern {return 24}
            else if pattern == thiPattern {return 25}
            else {return 26}
        case "15top":
            if pattern == firPattern {return 24}
            else if pattern == secPattern {return 25}
            else if pattern == thiPattern {return 26}
            else {return 27}
        case "16top":
            if pattern == firPattern {return 25}
            else if pattern == secPattern {return 26}
            else if pattern == thiPattern {return 27}
            else {return 28}
        case "17top":
            if pattern == firPattern {return 29}
            else if pattern == secPattern {return 30}
            else if pattern == thiPattern {return 31}
            else {return 32}
        case "18top":
            if pattern == firPattern {return 30}
            else if pattern == secPattern {return 31}
            else if pattern == thiPattern {return 32}
            else {return 33}
        case "19top":
            if pattern == firPattern {return 31}
            else if pattern == secPattern {return 32}
            else if pattern == thiPattern {return 33}
            else {return 34}
        case "20top":
            if pattern == firPattern {return 32}
            else if pattern == secPattern {return 33}
            else if pattern == thiPattern {return 34}
            else {return 35}
        case "21top":
            if pattern == firPattern {return 36}
            else if pattern == secPattern {return 37}
            else if pattern == thiPattern {return 38}
            else {return 39}
        case "22top":
            if pattern == firPattern {return 37}
            else if pattern == secPattern {return 38}
            else if pattern == thiPattern {return 39}
            else {return 40}
        case "23top":
            if pattern == firPattern {return 38}
            else if pattern == secPattern {return 39}
            else if pattern == thiPattern {return 40}
            else {return 41}
        case "24top":
            if pattern == firPattern {return 39}
            else if pattern == secPattern {return 40}
            else if pattern == thiPattern {return 41}
            else {return 42}
        case "25down":
            if pattern == firPattern {return 1}
            else if pattern == secPattern {return 8}
            else if pattern == thiPattern {return 15}
            else {return 22}
        case "26down":
            if pattern == firPattern {return 2}
            else if pattern == secPattern {return 9}
            else if pattern == thiPattern {return 16}
            else {return 23}
        case "27down":
            if pattern == firPattern {return 3}
            else if pattern == secPattern {return 10}
            else if pattern == thiPattern {return 17}
            else {return 24}
        case "28down":
            if pattern == firPattern {return 4}
            else if pattern == secPattern {return 11}
            else if pattern == thiPattern {return 18}
            else {return 25}
        case "29down":
            if pattern == firPattern {return 5}
            else if pattern == secPattern {return 12}
            else if pattern == thiPattern {return 19}
            else {return 26}
        case "30down":
            if pattern == firPattern {return 6}
            else if pattern == secPattern {return 13}
            else if pattern == thiPattern {return 20}
            else {return 27}
        case "31down":
            if pattern == firPattern {return 7}
            else if pattern == secPattern {return 14}
            else if pattern == thiPattern {return 21}
            else {return 28}
        case "32down":
            if pattern == firPattern {return 8}
            else if pattern == secPattern {return 15}
            else if pattern == thiPattern {return 22}
            else {return 29}
        case "33down":
            if pattern == firPattern {return 9}
            else if pattern == secPattern {return 16}
            else if pattern == thiPattern {return 23}
            else {return 30}
        case "34down":
            if pattern == firPattern {return 10}
            else if pattern == secPattern {return 17}
            else if pattern == thiPattern {return 24}
            else {return 31}
        case "35down":
            if pattern == firPattern {return 11}
            else if pattern == secPattern {return 18}
            else if pattern == thiPattern {return 25}
            else {return 32}
        case "36down":
            if pattern == firPattern {return 12}
            else if pattern == secPattern {return 19}
            else if pattern == thiPattern {return 26}
            else {return 33}
        case "37down":
            if pattern == firPattern {return 13}
            else if pattern == secPattern {return 20}
            else if pattern == thiPattern {return 27}
            else {return 34}
        case "38down":
            if pattern == firPattern {return 14}
            else if pattern == secPattern {return 21}
            else if pattern == thiPattern {return 28}
            else {return 35}
        case "39down":
            if pattern == firPattern {return 15}
            else if pattern == secPattern {return 22}
            else if pattern == thiPattern {return 29}
            else {return 36}
        case "40down":
            if pattern == firPattern {return 16}
            else if pattern == secPattern {return 23}
            else if pattern == thiPattern {return 30}
            else {return 37}
        case "41down":
            if pattern == firPattern {return 17}
            else if pattern == secPattern {return 24}
            else if pattern == thiPattern {return 31}
            else {return 38}
        case "42down":
            if pattern == firPattern {return 18}
            else if pattern == secPattern {return 25}
            else if pattern == thiPattern {return 32}
            else {return 39}
        case "43down":
            if pattern == firPattern {return 19}
            else if pattern == secPattern {return 26}
            else if pattern == thiPattern {return 33}
            else {return 40}
        case "44down":
            if pattern == firPattern {return 20}
            else if pattern == secPattern {return 27}
            else if pattern == thiPattern {return 34}
            else {return 41}
        case "45down":
            if pattern == firPattern {return 21}
            else if pattern == secPattern {return 28}
            else if pattern == thiPattern {return 35}
            else {return 42}
        case "46diagLeftRight":
            if pattern == firPattern {return 1}
            else if pattern == secPattern {return 9}
            else if pattern == thiPattern {return 17}
            else {return 25}
        case "47diagLeftRight":
            if pattern == firPattern {return 2}
            else if pattern == secPattern {return 10}
            else if pattern == thiPattern {return 18}
            else {return 26}
        case "48diagLeftRight":
            if pattern == firPattern {return 3}
            else if pattern == secPattern {return 11}
            else if pattern == thiPattern {return 19}
            else {return 27}
        case "49diagLeftRight":
            if pattern == firPattern {return 4}
            else if pattern == secPattern {return 12}
            else if pattern == thiPattern {return 20}
            else {return 26}
        case "50diagLeftRight":
            if pattern == firPattern {return 8}
            else if pattern == secPattern {return 16}
            else if pattern == thiPattern {return 24}
            else {return 32}
        case "51diagLeftRight":
            if pattern == firPattern {return 9}
            else if pattern == secPattern {return 17}
            else if pattern == thiPattern {return 25}
            else {return 33}
        case "52diagLeftRight":
            if pattern == firPattern {return 10}
            else if pattern == secPattern {return 18}
            else if pattern == thiPattern {return 26}
            else {return 34}
        case "53diagLeftRight":
            if pattern == firPattern {return 11}
            else if pattern == secPattern {return 19}
            else if pattern == thiPattern {return 25}
            else {return 35}
        case "54diagLeftRight":
            if pattern == firPattern {return 15}
            else if pattern == secPattern {return 23}
            else if pattern == thiPattern {return 31}
            else {return 39}
        case "55diagLeftRight":
            if pattern == firPattern {return 16}
            else if pattern == secPattern {return 24}
            else if pattern == thiPattern {return 32}
            else {return 40}
        case "56diagLeftRight":
            if pattern == firPattern {return 17}
            else if pattern == secPattern {return 25}
            else if pattern == thiPattern {return 33}
            else {return 41}
        case "57diagLeftRight":
            if pattern == firPattern {return 18}
            else if pattern == secPattern {return 26}
            else if pattern == thiPattern {return 34}
            else {return 42}
        case "58diagRightLeft":
            if pattern == firPattern {return 4}
            else if pattern == secPattern {return 10}
            else if pattern == secPattern {return 16}
            else {return 22}
        case "59diagRightLeft":
            if pattern == firPattern {return 5}
            else if pattern == secPattern {return 11}
            else if pattern == secPattern {return 17}
            else {return 23}
        case "60diagRightLeft":
            if pattern == firPattern {return 6}
            else if pattern == secPattern {return 12}
            else if pattern == secPattern {return 18}
            else {return 24}
        case "61diagRightLeft":
            if pattern == firPattern {return 7}
            else if pattern == secPattern {return 13}
            else if pattern == secPattern {return 19}
            else {return 25}
        case "62diagRightLeft":
            if pattern == firPattern {return 11}
            else if pattern == secPattern {return 17}
            else if pattern == secPattern {return 23}
            else {return 29}
        case "63diagRightLeft":
            if pattern == firPattern {return 12}
            else if pattern == secPattern {return 18}
            else if pattern == secPattern {return 24}
            else {return 30}
        case "64diagRightLeft":
            if pattern == firPattern {return 13}
            else if pattern == secPattern {return 19}
            else if pattern == secPattern {return 25}
            else {return 31}
        case "65diagRightLeft":
            if pattern == firPattern {return 14}
            else if pattern == secPattern {return 20}
            else if pattern == secPattern {return 26}
            else {return 32}
        case "66diagRightLeft":
            if pattern == firPattern {return 18}
            else if pattern == secPattern {return 24}
            else if pattern == secPattern {return 30}
            else {return 36}
        case "67diagRightLeft":
            if pattern == firPattern {return 19}
            else if pattern == secPattern {return 25}
            else if pattern == secPattern {return 31}
            else {return 37}
        case "68diagRightLeft":
            if pattern == firPattern {return 20}
            else if pattern == secPattern {return 26}
            else if pattern == secPattern {return 32}
            else {return 38}
        case "69diagRightLeft":
            if pattern == firPattern {return 21}
            else if pattern == secPattern {return 27}
            else if pattern == secPattern {return 33}
            else {return 39}
        default: return 5
        }
    }

    
}
