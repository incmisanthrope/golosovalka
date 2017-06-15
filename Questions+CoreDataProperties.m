//
//  Questions+CoreDataProperties.m
//  Golos
//
//  Created by Gleb R on 13.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Questions+CoreDataProperties.h"

@implementation Questions (CoreDataProperties)

+ (NSFetchRequest<Questions *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Questions"];
}

@dynamic questions;
@dynamic fromCategory;
@dynamic answer;

@end
