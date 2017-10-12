//
//  ViewController.swift
//  MongoReview
//
//  Created by Appinventiv Technologies on 11/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var reViewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "ReviewCell",
                            bundle: nil)
        self.reViewTable.register(cellNib,
                                  forCellReuseIdentifier: "ReviewCellId")
        
        self.reViewTable.dataSource = self
        self.reViewTable.delegate = self
        
    }

}

extension ViewController: UITableViewDataSource,
UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 300
        
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCellId",
                                                      for: indexPath) as? ReviewCell else{
            
            fatalError(" Cell not found")
            
        }
        
        cell.oneStarButton.addTarget(self,
                                     action: #selector(self.oneStarButtonAction),
                                     for: .touchUpInside)
        cell.twoStarButton.addTarget(self,
                                     action: #selector(self.twoStarButtonAction),
                                     for: .touchUpInside)
        cell.threeStarButton.addTarget(self,
                                       action: #selector(self.threeStarButtonAction),
                                       for: .touchUpInside)
        cell.fourStarButton.addTarget(self,
                                      action: #selector(self.fourStarButtonAction),
                                      for: .touchUpInside)
        cell.fiveStarButton.addTarget(self,
                                      action: #selector(self.fiveStarButtonAction),
                                      for: .touchUpInside)
        
        cell.averageRatingButton.addTarget(self,
                                           action: #selector(self.averageRatingButtonAction),
                                           for: .touchUpInside)
        
        
        return cell
    }
    
    
}

extension ViewController{
    
    @objc func oneStarButtonAction() {
        
        print("One Star pressed")
        
    }
    
    @objc func twoStarButtonAction() {
        
        print("Two Star pressed")
        
    }
    
    @objc func threeStarButtonAction() {
        
        print("Three Star pressed")
        
    }
    
    @objc func fourStarButtonAction() {
        
        print("Four Star pressed")
        
    }
    
    @objc func fiveStarButtonAction() {
        
        print("Five Star pressed")
        
    }
    
    @objc func averageRatingButtonAction(){
        
        print("averageRatingButton pressed")
        
    }
    
    
    
}


