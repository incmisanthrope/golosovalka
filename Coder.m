//
//  Coder.m
//  Golos
//
//  Created by Gleb R on 22.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Coder.h"

@implementation Coder

-(id)initWithRCoder:(NSCoder *)rDecoder {
    self = [super init];
    
    if (self) {
        _categoryOneCount = [rDecoder decodeIntegerForKey:@"categoryOneCount"];
    }
    
    return self;
}


-(void)encodeWithCoder:(NSCoder *)rCoder{
    [rCoder encodeInteger:_categoryOneCount forKey:@"categoryOneCount"];
}

-(void) saveData:(NSUInteger*)value question:(NSUInteger*)value answer:(NSUInteger*)value{
//    NSString *errorDesc = nil;
//    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
//    NSString *plistPath = [rootPath stringByAppendingString:TEMPLATES_PATH];
//    NSDictionary *dict = [NSDictionary dictionaryWithObject:templates forKey:@"templates"];
//    NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:dict format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorDesc];
//    if (plistData)
//    {
//        [plistData writeToFile:plistPath atomically:YES];
//    }else
//    {
//        NSLog(@"[Error] Application Did Enter Background {saving file error}: %@", errorDesc);
//        [errorDesc release];
//    }
}

@end
