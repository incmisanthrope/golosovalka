//
//  Values.m
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Values.h"

@implementation Values

-(void) saveQuestion:(NSString*)questionValue saveCategory:(NSString*)categoryValue {
    
    NSString *filePath= [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    
    NSMutableDictionary *nameDictionary = [NSMutableDictionary dictionary];
    [nameDictionary setValue:questionValue forKey:categoryValue];
    
    NSMutableArray *plist = [NSMutableArray arrayWithContentsOfFile:filePath];
    if (plist == nil) plist = [NSMutableArray array];
    [plist addObject:nameDictionary];
    [plist writeToFile:filePath atomically:YES];
    NSLog(@"DONE");
    
}

@end
