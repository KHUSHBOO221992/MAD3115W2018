//
//  VideoVC.swift
//  KHUSHBOO_CO684620_MAD3115_FT
//
//  Created by MacStudent on 2018-03-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import AVKit

class VideoVC: UIViewController {

    var video = AVPlayer()
    var vPlayer = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func btnPlayAction(_ sender: UIButton) {
        if let path = Bundle.main.path(forResource: "Toronto", ofType: "mp4"){
            
            self.video = AVPlayer(url: URL(fileURLWithPath: path))
            self.vPlayer = AVPlayerViewController()
            self.vPlayer.player = video
            
            self.present(self.vPlayer, animated: true, completion: {
                self.video.play()
            })
        }
        
    }}
