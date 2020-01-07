//
//  ViewController.swift
//  movingSquareExample
//
//  Created by komaldeep kaur on 2020-01-06.
//  Copyright © 2020 komaldeep kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var squareImg: UIImageView!
    
     var location = CGPoint(x: 0,y: 0)
     
     func moveSquare(_ imageView: UIImageView,_ speed:CGFloat)
     {
         let speeds = speed
         let imageSpeed = speeds / view.frame.size.height
         let averageSpeed = (view.frame.size.height - squareImg.frame.origin.x) * imageSpeed
         UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
         imageView.frame.origin.y = self.view.frame.size.height
       }, completion: { (_) in
       imageView.frame.origin.y = -imageView.frame.size.height
       self.moveSquare(imageView,speeds)
       })
    }

    override func viewDidAppear(_ animated: Bool)
    {
        moveSquare(squareImg, 30)
    }
}

