//
//  Creature.h
//  GameOfLife
//
//  Created by Nick Guan on 8/21/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

//current state of the creature
@property (nonatomic, assign) BOOL isAlive;

//amount of living neighbors
@property (nonatomic, assign) NSInteger livingNeighbors;

- (id)initCreature;


@end
