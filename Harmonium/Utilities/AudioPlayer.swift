//
//  AudioPlayer.swift
//  Harmonium
//
//  Created by Vishal Kumar on 27/11/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(soundName:String)  {
    if let path = Bundle.main.path(forResource: soundName, ofType: "wav") {
      do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        audioPlayer?.play()
      } catch {
        print("Could not play the sound file.")
      }
    } else {
        print("Path not found")
    }
}
