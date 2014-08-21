//
//  Creature.m
//  GameOfLife
//
//  Created by Nick Guan on 8/21/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature
- (instancetype)initCreature {
    //since Creature is inherited from CCSprite, 'super' refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/1234.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    //when you create an @property as we did in the .h an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    //'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property
    self.visible = _isAlive;
}
@end
