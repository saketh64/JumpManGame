//
//  SUBarriers.swift
//  RunningMan
//
//  Created by Saketh Undurty on 6/17/15.
//  Copyright (c) 2015 Saketh Undurty. All rights reserved.
//

import Foundation
import SpriteKit

class SUBarrierGenerator: SKSpriteNode {
    
    var generationTimer: NSTimer?
    
    func startGeneratingEvery(seconds: NSTimeInterval) {
        generationTimer = NSTimer.scheduledTimerWithTimeInterval(seconds, target: self, selector: "generateBarrier", userInfo: nil, repeats: true) //selector is what function you want to call/fire
    }
    func generateBarrier(){
        let barrier = SUBarrier()
        barrier.position.x = size.width/2 + barrier.size.width/2
        let randomNumber = arc4random_uniform(50)
        if randomNumber%2==0 {
            barrier.position.y = size.height/4
        }
        else {
            barrier.position.y = 15
        }
        
        addChild(barrier)
    }
}