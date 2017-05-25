//
//  Values.m
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Values.h"

@implementation Values

-(void) saveQ:(NSString*)questi saveC:(NSString*) categ{
    
    NSString *filePath= [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    
    NSMutableDictionary *nameDictionary = [NSMutableDictionary dictionary];
    [nameDictionary setValue:questi forKey:categ];
    
    NSMutableArray *plist = [NSMutableArray arrayWithContentsOfFile:filePath];
    if (plist == nil) plist = [NSMutableArray array];
    [plist addObject:nameDictionary];
    [plist writeToFile:filePath atomically:YES];
    NSLog(@"DONE");
    
}

@end
