//
//  TakenPictureViewController.swift
//  Flashcard
//
//  Created by George Lo on 10/18/14.
//  Copyright (c) 2014 Boilermake Fall 2014. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let collectionView: UICollectionView = UICollectionView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height - 0), collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(UIScreen.mainScreen().bounds.width/2, UIScreen.mainScreen().bounds.width/2)
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 0.0
        self.collectionView.backgroundColor = UIColor.blackColor()
        self.collectionView.collectionViewLayout = layout
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.view.addSubview(collectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as UICollectionViewCell
        
        for view: UIView in cell.contentView.subviews as [UIView] {
            view.removeFromSuperview()
        }
        
        var image = UIImage(named: "SteeringWheel.png")
        if (indexPath.row >= 2) {
            image = UIImage(named: "015P270LN_1_orig.jpg")
        }
        
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width / 2, UIScreen.mainScreen().bounds.width / 2)
        imageView.clipsToBounds = true
        cell.contentView.addSubview(imageView)
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        /*var tesseract:Tesseract = Tesseract();
        tesseract.language = "eng";
        tesseract.delegate = self;
        //list of char to be recognized
        tesseract.setVariableValue("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ,!()'|[]-_:;?#%^&*<>/@", forKey: "tessedit_char_whitelist");
        
        tesseract.image = UIImage(contentsOfFile: NSHomeDirectory().stringByAppendingPathComponent("Documents").stringByAppendingPathComponent(pictureName[indexPath.row] as String))
        
        let progressHUD: MRProgressOverlayView = MRProgressOverlayView.showOverlayAddedTo(self.navigationController?.view, title: "Parsing", mode: MRProgressOverlayViewMode.Indeterminate, animated: true)
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            tesseract.recognize()
            let str: String = tesseract.recognizedText
            let strAry: [String] = str.componentsSeparatedByString(" ")
            dispatch_async(dispatch_get_main_queue(), {
                progressHUD.dismiss(true, completion: {
                    let pictureListVC: PictureListViewController = PictureListViewController()
                    pictureListVC.processStr = strAry
                    self.navigationController?.pushViewController(pictureListVC, animated: true)
                })
            })
        })*/
    }
}
