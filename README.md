# Clouds
 
## Clouds Moving around screen

Added Some screens here.

![](https://github.com/pawankv89/Clouds/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Clouds/blob/master/images/screen_2.png)
![](https://github.com/pawankv89/Clouds/blob/master/images/screen_3.png)


## Usage

#### Controller

```swift


import Foundation
import UIKit

class SplashScreen: UIViewController {
    
    @IBOutlet weak var aImageView: UIImageView!
    @IBOutlet weak var bImageView: UIImageView!
    @IBOutlet weak var cImageView: UIImageView!
    @IBOutlet weak var dImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            // your function here
            self.moveToVC()
        }
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
    
   @objc func moveToVC() -> () {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateViewController(withIdentifier: "ViewController")

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = initialViewController
        appDelegate.window?.makeKeyAndVisible()
        
    }

}


```

## Requirements

### Build

Xcode Version 11.3 (11C29), iOS 13.2.0 SDK

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 



