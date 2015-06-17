//
//  SUMovingGround.swift
//  RunningMan
//
//  Created by Saketh Undurty on 6/15/15.
//  Copyright (c) 2015 Saketh Undurty. All rights reserved.
//

import Foundation
import SpriteKit

class SUMovingGround: SKSpriteNode {
    
    let SEG_NUM = 20
    let COLOR_ONE = UIColor.grayColor()
    let COLOR_TWO = UIColor.blackColor()
    
    init(size: CGSize) {
        super.init(texture: nil, color: COLOR_TWO, size: CGSizeMake(size.width*2, size.height))
        anchorPoint = CGPointMake(0, 0.5)
        
        for var i = 0; i < SEG_NUM; i++ {
            var segmentColor: UIColor!
            if i%2 == 0 {
                segmentColor = COLOR_ONE
            }
            else {
                segmentColor = COLOR_TWO
            }
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width / CGFloat(SEG_NUM), self.size.height))
            segment.anchorPoint = CGPointMake(0, 0.5)
            segment.position = CGPointMake(CGFloat(i)*segment.size.width, 0)
            addChild(segment)
        }
    }
    
    func startMoving(){
        let moveLeft = SKAction.moveByX(-frame.size.width/2, y: 0, duration: 1.5)
        let resetPosition = SKAction.moveToX(0, duration: 0)
        
        let moveSequence = SKAction.sequence([moveLeft, resetPosition])
        runAction(SKAction.repeatActionForever(moveSequence))

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
