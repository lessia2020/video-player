//
//  ViewController.swift
//  video_player
//
//  Created by Olesia Nurislamova on 04.02.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo(){
        guard let path=Bundle.main.path(forResource: "sea", ofType:"mp4") else {
            debugPrint("sea.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
