//
//  ViewController.swift
//  NinetyNineRedBalloons
//
//  Created by Belinda Heliot on 10/20/14.
//  Copyright (c) 2014 Belinda Heliot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var balloonImageView: UIImageView!
    @IBOutlet weak var balloonNumberLabel: UILabel!
    
    var balloonArray:[Balloon] = []
    var currentIndex = 0
    func make99Balloons() {
        for var x = 1; x < 100; ++x {
            var redBalloon = Balloon()
            redBalloon.number = x
            var randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            case 0:
                redBalloon.image = UIImage(named: "RedBalloon1.jpg")
            case 1:
                redBalloon.image = UIImage(named: "RedBalloon2.jpg")
            case 2:
                redBalloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                redBalloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            balloonArray.append(redBalloon)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.make99Balloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        let currentBalloon = balloonArray[currentIndex]
        self.balloonImageView.image = currentBalloon.image
        self.balloonNumberLabel.text = "Balloon #\(currentBalloon.number)"
        ++currentIndex
    }

}

