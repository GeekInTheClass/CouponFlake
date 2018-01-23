//
//  DetailViewController.swift
//  Prac
//
//  Created by user on 2018. 1. 23..
//  Copyright © 2018년 KES. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedTeam: Team!
    
    
    @IBOutlet weak var mark: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var menu: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.mark.image = self.selectedTeam.mark
        self.storeName.text = self.selectedTeam.storeName
        self.menu.text = self.selectedTeam.menu
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
