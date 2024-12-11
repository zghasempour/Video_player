//
//  ViewController.swift
//  video_player
//
//  Created by Zahra Ghasempour Moghaddam on 11.12.2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "video", ofType: "mp4") else{
            debugPrint("video.mp4 not found")
            return
        }
        
        let player = AVPlayer(url: (URL(fileURLWithPath: path)))
        
        let playController = AVPlayerViewController()
        
        playController.player = player
        
        present(playController, animated: true){
            player.play()
        }
    }

}

