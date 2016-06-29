//
//  SushiPiece.swift
//  SushiNeko
//
//  Created by Norma Tu on 6/29/16.
//  Copyright © 2016 NormaTu. All rights reserved.
//

import Foundation
import SpriteKit

class SushiPiece: SKSpriteNode {
    
    /* Sushi type */
    var side: Side = .None {
        
        didSet {
            switch side {
            case .Left:
                /* Show left chopstick */
                leftChopstick.hidden = false
            case .Right:
                /* Show right chopstick */
                rightChopstick.hidden = false
            case .None:
                /* Hide all chopsticks */
                leftChopstick.hidden = true
                rightChopstick.hidden = true
            }
            
        }
    }
    
    /* Chopsticks objects */
    var rightChopstick: SKSpriteNode!
    var leftChopstick: SKSpriteNode!
    
    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func connectChopsticks() {
        /* Connect the child chopstick nodes */
        
        rightChopstick = childNodeWithName("rightChopstick") as! SKSpriteNode
        leftChopstick = childNodeWithName("leftChopstick") as! SKSpriteNode
        
        /* Set the default side */
        side = .None
    }
    
}