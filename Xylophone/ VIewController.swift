//
//  ViewController.swift
//  Xylophone
//
//  Created by Yousef Almassad .
//  Copyright © 2016 Yousef. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var sound: String = "";
        switch sender.tag {
        case 1:
            sound = "note\(sender.tag)";
            break;
        case 2:
            sound = "note\(sender.tag)";
            break;
        case 3:
            sound = "note\(sender.tag)";
            break;
        case 4:
            sound = "note\(sender.tag)";
            break;
        case 5:
            sound = "note\(sender.tag)";
            break;
        case 6:
            sound = "note\(sender.tag)";
            break;
        case 7:
            sound = "note\(sender.tag)";
            break;
        default:
            print("Unrechable code STUPID SWIFT")
            //sound = "note\(sender.tag)";
        }
        
        if let soundURL = Bundle.main.url(forResource: sound, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
        
        
    }
    
  

}

