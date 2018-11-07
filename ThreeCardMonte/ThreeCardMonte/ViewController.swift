//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlets
    @IBOutlet weak var stageView : UILabel!
    
    //button Outlets/cards
    //add random array selected at play "start" shuffle on "new game"
    var images = [UIImage.init(named: "threeCard"),
                 UIImage.init(named: "threeCard"),
                 UIImage.init(named: "kingCard")]
    
    
    @IBOutlet weak var newGame : UIButton!
    @IBOutlet weak var card1 : UIButton!
    @IBOutlet weak var card2 : UIButton!
    @IBOutlet weak var card3 : UIButton!
    
override func viewDidLoad() {
    super.viewDidLoad()
    

}//startw a down set of selected choices whuch is my starting /play game. have a hidden arrays

@IBAction func pickTheKing(_ sender: UIButton){
    images = images.shuffled()

    
   //var cardChoice: (image: UIImage?, name: String )?
   switch sender.tag {
    case 0:
        if images[0] == UIImage.init(named: "kingCard") {
            card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
            stageView.text = "You Win!"
        }else {
            card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                if images[1] == UIImage.init(named: "kingCard"){
                    card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                } else if images[2] == UIImage.init(named: "kingCard"){
                    card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
           
          
            stageView.text = "You Lose!"
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    
    case 1:
        if images[1] == UIImage.init(named: "kingCard") {
            card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            stageView.text = "You Win!"
        }else {
            card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                if images[0] == UIImage.init(named: "kingCard"){
                    card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                } else if images[2] == UIImage.init(named: "kingCard"){
                    card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            stageView.text = "You Lose!"
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    case 2:
       if images[2] == UIImage.init(named: "kingCard") {
            card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
            stageView.text = "You Win!"
        }else{
            card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                if images[0] == UIImage.init(named: "kingCard"){
                    card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                } else if images[1] == UIImage.init(named: "kingCard"){
                    card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            stageView.text = "You Lose!"
            //card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    
    default:
        print("push to play")
    }

}

//all card faces are down - how ?
//one person clicks on a choice
//a random selector will choose out of the 2 face up choices
//and displays
// if it is the king
//     disable the other cards.
//if not the king
//      allow to click next one
// else print king
//should there be a random selector for all separate cards?

}

