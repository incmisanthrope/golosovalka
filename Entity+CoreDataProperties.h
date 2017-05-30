//
//  Entity+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 30.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Entity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Entity (CoreDataProperties)

+ (NSFetchRequest<Entity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *answer;
@property (nullable, nonatomic, copy) NSString *category;
@property (nullable, nonatomic, copy) NSString *questions;

@end

NS_ASSUME_NONNULL_END
