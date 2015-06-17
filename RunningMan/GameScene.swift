//
//  GameScene.swift
//  RunningMan
//
//  Created by Saketh Undurty on 6/15/15.
//  Copyright (c) 2015 Saketh Undurty. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var movingGround: SUMovingGround!
    var isStarted = false

    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        movingGround = SUMovingGround(size: CGSizeMake(view.frame.width, 20))
        movingGround.position = CGPointMake(0, view.frame.height/2)
        addChild(movingGround)
        
        let tapToStartLabel = SKLabelNode(text: "Tap to Start!")
        tapToStartLabel.name = "tapToStartLabel"
        tapToStartLabel.position.x = view.center.x
        tapToStartLabel.position.y = view.center.y + 50
        tapToStartLabel.fontColor = UIColor.blackColor()
        addChild(tapToStartLabel)
        
        
    }
    func start(){
        isStarted = true
        movingGround.startMoving()
        let tapToStartLabel = childNodeWithName("tapToStartLabel")//look this up!!
        tapToStartLabel!.removeFromParent()
        
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        if !isStarted{
            start()
        }
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
