//
//  ViewController.swift
//  Clouds
//
//  Created by Pawan kumar on 10/06/20.
//  Copyright © 2020 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aImageView: UIImageView!
    @IBOutlet weak var bImageView: UIImageView!
    @IBOutlet weak var cImageView: UIImageView!
    @IBOutlet weak var dImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        super.viewDidAppear(animated)
   
        //Call Function for moving the clouds
    
        moveIt(aImageView,4)
        moveIt(bImageView,6)
        moveIt(cImageView,8)
        moveIt(dImageView,10)
    }

    func moveIt(_ imageView: UIImageView,_ speed: CGFloat) {
    
        let speeds = speed
    
        let imageSpeed = speeds / view.frame.size.width
    
        let averageSpeed = (view.frame.size.width - imageView.frame.origin.x) * imageSpeed
    
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
    
            imageView.frame.origin.x = self.view.frame.size.width
            
    }, completion: { (_) in
    
        imageView.frame.origin.x = -imageView.frame.size.width
    
        self.moveIt(imageView,speeds)
   
        })
    }

}

