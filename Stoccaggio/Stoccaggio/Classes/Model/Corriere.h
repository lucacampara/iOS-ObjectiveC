//
//  Corriere.h
//  Stoccaggio
//
//  Created by Luca Campara on 08/02/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Corriere : NSObject

-(id)initWithVolume: (NSInteger) volume andTara:(NSInteger)tara;

@property (nonatomic, readonly) NSInteger volume;
@property (nonatomic, readonly) NSInteger tara;
@property (nonatomic) NSInteger peso;

@end
