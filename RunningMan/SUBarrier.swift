//
//  SUBarrier.swift
//  RunningMan
//
//  Created by Saketh Undurty on 6/17/15.
//  Copyright (c) 2015 Saketh Undurty. All rights reserved.
//

import Foundation
import SpriteKit

class SUBarrier: SKSpriteNode {
    let BARRIER_WIDTH: CGFloat = 50
    let BARRIER_HEIGHT: CGFloat = 30
    init() {
        super.init(texture: nil, color: UIColor.blackColor(), size: CGSizeMake(BARRIER_WIDTH, BARRIER_HEIGHT))
        startMoving()
    }
    
    func startMoving(){
        let moveLeft = SKAction.moveByX(-300, y: 0, duration: 2.5)
        runAction(SKAction.repeatActionForever(moveLeft))
    }
    func stop() {
        removeAllActions()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}