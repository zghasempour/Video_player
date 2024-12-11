//
//  ViewController.swift
//  video_player
//
//  Created by Zahra Ghasempour Moghaddam on 11.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func findVideo(){
       guard let path = Bundle.main.path(forResource: "test", ofType: "m4v") else{
            
            debugPrint("test.m4v not found")
            
            return
        }
    }

}

