//
//  PlaySoundModel.swift
//  Shake It
//
//  Created by Taylor Patterson on 5/6/20.
//  Copyright © 2020 Taylor Patterson. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundModel {
    
    var player: AVAudioPlayer!
    var sound: String = ""
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func stopPlaySound() {
        player.stop()
    }
}

