//
//  ViewController.swift
//  CollectionViewTut
//
//  Created by George Lo on 12/5/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define Layout and item size
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSizeMake(60, 100)
        flowLayout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20)
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Vertical
        
        // Define CollectionView
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionView.registerClass(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "CellIdentifier")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(collectionView)
    }
    
    /* CollectionView - Data Source function */
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellIdentifier", forIndexPath: indexPath) as UICollectionViewCell
        
        let view = UIView(frame: CGRectMake(0, 0, 60, 100))
        view.backgroundColor = UIColor.blueColor()
        cell.contentView.addSubview(view)
        
        return cell
    }
    
    /* CollectionView - Delegate function */
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println(indexPath.row)
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

