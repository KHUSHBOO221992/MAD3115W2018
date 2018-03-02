//
//  BooksCVC.swift
//  DAY9_2MAR
//
//  Created by MacStudent on 2018-03-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class BooksCVC: UICollectionViewController {
    
    let booksTitles = ["The Alchemist","The Story of An Hour","Breaking Dawn","A Jury of her Peers","The Last Leaf","The Day I Stopped Drinking Milk","O Monte Cinco","Red Queen","The Sky Is Falling","The Necklace","The Wise & Otherwise"]
    let booksImages = ["Alchemist.jpeg","AnHour.jpeg","BreakingDawn.jpeg","Jury.jpeg","LastLeaf.jpeg","Milk.jpeg","Mountain.jpeg","RedQueen.jpeg","Sky.jpeg","TheNecklace.jpeg","WiseOtherwise.jpeg"]
    override func viewDidLoad()
    {
        super.viewDidLoad()

       // Register cell classes
       // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCell")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return booksTitles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! BookCell
    
        // Configure the cell
        cell.lblBookTitle.text = booksTitles[indexPath.row]
        cell.imgBook.image = UIImage(named: booksImages[indexPath.row])
        return cell
    }
    
    // THIS CODING USED TO CONNECT GRID IMAGE WE CREATED TO  CONNECT NEXT VIEW WHICH EVER WE WANT TO
    
   override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("Book : \(booksTitles[indexPath.row])")
    }



}
