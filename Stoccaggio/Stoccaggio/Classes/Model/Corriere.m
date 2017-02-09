//
//  Corriere.m
//  Stoccaggio
//
//  Created by Luca Campara on 08/02/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "Corriere.h"

@implementation Corriere

-(id)initWithVolume:(NSInteger)volume andTara:(NSInteger)tara{
    
    self = [super init];
    
    if (self) {
        _volume = volume;
        _tara = tara;
    }
    
    return self;
}

@end
