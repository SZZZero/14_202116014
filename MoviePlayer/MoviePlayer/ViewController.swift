//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 203a05 on 2022/05/27.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnPlayInternaMovie(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "영상", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playvideo(url: url)
        }
        
        
    @IBAction func btnPlayExternaMovie(_ sender: UIButton) {
       
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz05w2mvud/FireWorks.mp4")!
        
        playvideo(url: url)
        }
    
    private func playvideo(url: NSURL){
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true){
            player.play()
        }
    }

}



