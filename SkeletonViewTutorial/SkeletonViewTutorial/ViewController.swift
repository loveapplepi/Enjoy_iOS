//
//  ViewController.swift
//  SkeletonViewTutorial
//
//  Created by loveapplepi on 26/04/2019.
//  Copyright © 2019 loveapplepi. All rights reserved.
//

import UIKit
import SkeletonView

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.isSkeletonable = true
        
        view.showAnimatedGradientSkeleton()
        // Do any additional setup after loading the view.
    }


}

