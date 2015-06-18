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
    var notFalling = true
    var barrierGen: SUBarrierGenerator!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        let backgroundTexture = SKTexture(imageNamed: "gamebknd.jpg")
        let backgroundImage = SKSpriteNode(texture: backgroundTexture, size: view.frame.size)
        backgroundImage.position = view.center
        addChild(backgroundImage)
        
        movingGround = SUMovingGround(size: CGSizeMake(view.frame.width, 20))
        movingGround.position = CGPointMake(0, view.frame.height/4)
        addChild(movingGround)
        
        let tapToStartLabel = SKLabelNode(text: "Tap to Start!")
        tapToStartLabel.name = "tapToStartLabel"
        tapToStartLabel.position.x = view.center.x
        tapToStartLabel.position.y = view.center.y + 50
        tapToStartLabel.fontColor = UIColor.blackColor()
        addChild(tapToStartLabel)
        
        barrierGen = SUBarrierGenerator(color: UIColor.clearColor(), size: view.frame.size)
        barrierGen.position = view.center
        addChild(barrierGen)
        

    }
    func start(){
        isStarted = true
        movingGround.startMoving()
        let tapToStartLabel = childNodeWithName("tapToStartLabel")
        tapToStartLabel!.removeFromParent()
        barrierGen.startGeneratingEvery(1)
      
        
        
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
