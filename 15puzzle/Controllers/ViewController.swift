//
//  ViewController.swift
//  15puzzle
//
//  Created by Артём Андреев on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelTest: UILabel!
    @IBOutlet var buttonArray: [UIButton]!
    var num = 0
    var x = 0
    var y = 0
    var yt = 0
    var yb = 0
    var xl = 0
    var xr = 0
    var numberButtonRigth = 0
    var numberButtonLeft = 0
    var numberButtonTop = 0
    var numberButtonBot = 0
    
    //    var numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, nil]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        num = Int(sender.tag)
        num -= 1
        y = num/4
        x = num - y * 4
        
        yt = y - 1
        yb = y + 1
        xl = x - 1
        xr = x + 1
        
        if(xr < 4){
            numberButtonRigth = y * 4 + xr
            if(buttonArray[numberButtonRigth].isHidden == true){
                buttonArray[numberButtonRigth].isHidden = false
                buttonArray[num].isHidden = true
                buttonArray[numberButtonRigth].setTitle(buttonArray[num].currentTitle, for: .normal)
            }
        }
        if(xl >= 0){
            numberButtonLeft = y * 4 + xl
            if(buttonArray[numberButtonLeft].isHidden == true){
                buttonArray[numberButtonLeft].isHidden = false
                buttonArray[num].isHidden = true
                buttonArray[numberButtonLeft].setTitle(buttonArray[num].currentTitle, for: .normal)
            }
        }
        if(yt >= 0){
            numberButtonTop = yt * 4 + x
            if(buttonArray[numberButtonTop].isHidden == true){
                buttonArray[numberButtonTop].isHidden = false
                buttonArray[num].isHidden = true
                buttonArray[numberButtonTop].setTitle(buttonArray[num].currentTitle, for: .normal)
            }
        }
        if(yb < 4){
            numberButtonBot = yb * 4 + x
            if(buttonArray[numberButtonBot].isHidden == true){
                buttonArray[numberButtonBot].isHidden = false
                buttonArray[num].isHidden = true
                buttonArray[numberButtonBot].setTitle(buttonArray[num].currentTitle, for: .normal)
            }
        }
    }
}


