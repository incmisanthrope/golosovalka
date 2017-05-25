//
//  Coder.h
//  Golos
//
//  Created by Gleb R on 22.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coder : NSCoder

@property (assign, nonatomic) NSUInteger categoryOneCount;

-(void) encodeWithCoder:(NSCoder*) rCoder;
-(id) initWithRCoder:(NSCoder *) rDecoder;

-(void) saveData:(NSUInteger*)value question:(NSUInteger*)value answer:(NSUInteger*)value;

@end
