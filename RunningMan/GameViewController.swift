//
//  GameViewController.swift
//  RunningMan
//
//  Created by Saketh Undurty on 6/15/15.
//  Copyright (c) 2015 Saketh Undurty. All rights reserved.
//

import UIKit
import SpriteKit



class GameViewController: UIViewController {
    var scene: GameScene!
    override func viewDidLoad() {
        //Configure the view
        let skView = view as! SKView //so we can use the functions within the SKView class..?
        skView.multipleTouchEnabled = false
        
        //Create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //Present the scene
        skView.presentScene(scene)
        
    }


    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.All.rawValue)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
