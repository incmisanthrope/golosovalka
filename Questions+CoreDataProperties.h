//
//  Questions+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 20.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Questions+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Questions (CoreDataProperties)

+ (NSFetchRequest<Questions *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *questions;
@property (nullable, nonatomic, retain) NSSet<AnswersForQuestion *> *answerToRel;
@property (nullable, nonatomic, retain) Category *fromCategory;

@end

@interface Questions (CoreDataGeneratedAccessors)

- (void)addAnswerToRelObject:(AnswersForQuestion *)value;
- (void)removeAnswerToRelObject:(AnswersForQuestion *)value;
- (void)addAnswerToRel:(NSSet<AnswersForQuestion *> *)values;
- (void)removeAnswerToRel:(NSSet<AnswersForQuestion *> *)values;

@end

NS_ASSUME_NONNULL_END
