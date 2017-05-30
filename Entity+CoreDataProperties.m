//
//  Entity+CoreDataProperties.m
//  Golos
//
//  Created by Gleb R on 30.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Entity+CoreDataProperties.h"

@implementation Entity (CoreDataProperties)

+ (NSFetchRequest<Entity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Entity"];
}

@dynamic answer;
@dynamic category;
@dynamic questions;

@end
