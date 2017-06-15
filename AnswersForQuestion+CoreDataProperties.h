//
//  AnswersForQuestion+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 13.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "AnswersForQuestion+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface AnswersForQuestion (CoreDataProperties)

+ (NSFetchRequest<AnswersForQuestion *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *answer;
@property (nullable, nonatomic, retain) Questions *relationship;

@end

NS_ASSUME_NONNULL_END
