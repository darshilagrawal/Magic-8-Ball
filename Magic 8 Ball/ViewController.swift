

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageBall: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball4")]
    
    @IBAction func pressedButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1,
                       delay: 0.1,
                       options: UIView.AnimationOptions.curveEaseIn,
                       animations: { () -> Void in
            self.imageBall.image=self.ballArray.randomElement()
        }, completion: { (finished) -> Void in
        })
        
    }
}

