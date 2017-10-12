//
//  ReviewCell.swift
//  MongoReview
//
//  Created by Appinventiv Technologies on 11/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ReviewCell: UITableViewCell {
    
    @IBOutlet weak var averageRatingButton: UIButton!
    @IBOutlet weak var fiveStarButton: UIButton!
    @IBOutlet weak var fourStarButton: UIButton!
    @IBOutlet weak var threeStarButton: UIButton!
    @IBOutlet weak var twoStarButton: UIButton!
    @IBOutlet weak var oneStarButton: UIButton!
    @IBOutlet weak var fifThProgressBar: UIProgressView!
    @IBOutlet weak var forthProgressBar: UIProgressView!
    @IBOutlet weak var thirdProgressBar: UIProgressView!
    @IBOutlet weak var secondProgressBar: UIProgressView!
    @IBOutlet weak var firstProgressBar: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.forConnerCut()
        self.animationOnProgressView()
       
    }

}

extension UIProgressView {
    
    func animate(duration: Double,
                 end: Float) {
        
        setProgress(0.01,
                    animated: true)
        
        UIView.animate(withDuration: duration,
                       delay: 0.0,
                       options: .curveLinear,
                       animations: {
                        
                        self.setProgress(end,
                                         animated: true)
                        
        },
                       completion: nil)
        
    }
}

extension ReviewCell{
    
  func animationOnProgressView() {
    
    self.fifThProgressBar.animate(duration: 2, end: 0.85)
    self.forthProgressBar.animate(duration: 2, end: 0.7)
    self.thirdProgressBar.animate(duration: 2, end: 0.55)
    self.secondProgressBar.animate(duration: 2, end: 0.42)
    self.firstProgressBar.animate(duration: 2, end: 0.2)
    
    }

    func forConnerCut() {
        
        self.averageRatingButton.layer.cornerRadius = 4
        self.fifThProgressBar.layer.cornerRadius = 4
        self.forthProgressBar.layer.cornerRadius = 4
        self.thirdProgressBar.layer.cornerRadius = 4
        self.secondProgressBar.layer.cornerRadius = 4
        self.firstProgressBar.layer.cornerRadius = 4
        
    }
}


