//
//  MeetTeamViewController.swift
//  MoodTracker
//
//  Created by hiirari on 28.10.2022.
//

import UIKit

class MeetTeamViewController: UIViewController {
    
    @IBOutlet var YPhoto: UIImageView!
    @IBOutlet var KPhoto: UIImageView!
    @IBOutlet var RPhoto: UIImageView!
    @IBOutlet var RoPhoto: UIImageView!
    @IBOutlet var EPhoto: UIImageView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
        
    }
    
    override func viewDidLayoutSubviews() {
        YPhoto.layer.cornerRadius = YPhoto.frame.width / 2
        KPhoto.layer.cornerRadius = KPhoto.frame.width / 2
        RPhoto.layer.cornerRadius = RPhoto.frame.width / 2
        RoPhoto.layer.cornerRadius = RoPhoto.frame.width / 2
        EPhoto.layer.cornerRadius = EPhoto.frame.width / 2
    }

}
