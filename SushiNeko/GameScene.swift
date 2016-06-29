//
//  GameScene.swift
//  SushiNeko
//
//  Created by Norma Tu on 6/29/16.
//  Copyright (c) 2016 NormaTu. All rights reserved.
//

import SpriteKit

/* Tracking enum for use with character and sushi side */
enum Side {
    case Left, Right, None
}

class GameScene: SKScene {
    
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    var character: Character!
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        /* Connect game objects */
        sushiBasePiece = childNodeWithName("sushiBasePiece") as! SushiPiece
        
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
        
        /* Connect game objects */
        character = childNodeWithName("character") as! Character
        
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
