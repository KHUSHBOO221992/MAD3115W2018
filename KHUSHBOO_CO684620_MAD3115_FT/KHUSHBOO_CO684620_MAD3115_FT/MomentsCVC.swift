//
//  MomentsCVC.swift
//  KHUSHBOO_CO684620_MAD3115_FT
//
//  Created by MacStudent on 2018-03-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit


class MomentsCVC: UICollectionViewController {

    let momentsTitles = ["I'M HUNGRY","SMILE PLEASE","POSING","OOO...RELAXING","DANCING MOOD","DO NOT DISTURB...SLEEPING"]
    
    let momentsImages = ["P1.jpg","P2.jpg","P3.png","P4.jpg","P5.png","P6.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return momentsTitles.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MomentsCell
        
        
        cell.imgMoment.image = UIImage(named: momentsImages[indexPath.row])
        cell.lblMomentTitle.text = momentsTitles[indexPath.row]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // print("MOMENTS : \(momentsTitles[indexPath.row])")
        
    }
}
