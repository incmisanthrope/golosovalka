//
//  AnswersForQuestion+CoreDataProperties.m
//  Golos
//
//  Created by Gleb R on 13.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "AnswersForQuestion+CoreDataProperties.h"

@implementation AnswersForQuestion (CoreDataProperties)

+ (NSFetchRequest<AnswersForQuestion *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"AnswersForQuestion"];
}

@dynamic answer;
@dynamic relationship;

@end
