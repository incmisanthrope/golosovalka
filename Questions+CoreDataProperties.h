//
//  Questions+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 13.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Questions+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Questions (CoreDataProperties)

+ (NSFetchRequest<Questions *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *questions;
@property (nullable, nonatomic, retain) Category *fromCategory;
@property (nullable, nonatomic, retain) NSSet<AnswersForQuestion *> *answer;

@end

@interface Questions (CoreDataGeneratedAccessors)

- (void)addAnswerObject:(AnswersForQuestion *)value;
- (void)removeAnswerObject:(AnswersForQuestion *)value;
- (void)addAnswer:(NSSet<AnswersForQuestion *> *)values;
- (void)removeAnswer:(NSSet<AnswersForQuestion *> *)values;

@end

NS_ASSUME_NONNULL_END
