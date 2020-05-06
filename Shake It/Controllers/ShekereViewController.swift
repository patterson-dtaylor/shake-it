//
//  ShekereViewController.swift
//  Shake It
//
//  Created by Taylor Patterson on 5/6/20.
//  Copyright © 2020 Taylor Patterson. All rights reserved.
//

import UIKit

class ShekereViewController: UIViewController {
    
    @IBOutlet weak var shekereLabel: UILabel!
    
    let play = PlaySoundModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = K.appName
        UINavigationBar.appearance().barTintColor = UIColor(named: K.Colors.skekereColor)
        
        play.sound = shekereLabel.text!
        
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (event?.subtype == UIEvent.EventSubtype.motionShake) {
            play.playSound(soundName: play.sound)
        } else {
            play.stopPlaySound()
        }
    }
}
