//
//  GameViewController.m
//  Hongbaofly
//
//  Created by JFChen on 2019/12/3.
//  Copyright © 2019 JFChen. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "PrimaryScene.h"

@implementation GameViewController{
    PrimaryScene *_mainScene;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Load the SKScene from 'GameScene.sks'
//    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
    
    // Set the scale mode to scale to fit the window
//    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    _mainScene = [[PrimaryScene alloc] initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
    _mainScene.scaleMode = SKSceneScaleModeAspectFill;
    _mainScene.scaleMode = SKSceneScaleModeAspectFit;
    [_mainScene runAction:[SKAction repeatActionForever:[SKAction playSoundFileNamed:@"backGround.mp3" waitForCompletion:YES]]];
    
    SKView *skView = (SKView *)self.view;
    
    // Present the scene
    [skView presentScene:_mainScene];
    
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
