//
//  Category+CoreDataProperties.m
//  Golos
//
//  Created by Gleb R on 20.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Category+CoreDataProperties.h"

@implementation Category (CoreDataProperties)

+ (NSFetchRequest<Category *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Category"];
}

@dynamic category;
@dynamic catQuestions;

@end
