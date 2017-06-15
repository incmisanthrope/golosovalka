//
//  Category+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 13.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Category+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Category (CoreDataProperties)

+ (NSFetchRequest<Category *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *category;
@property (nullable, nonatomic, retain) NSSet<Questions *> *questions;

@end

@interface Category (CoreDataGeneratedAccessors)

- (void)addQuestionsObject:(Questions *)value;
- (void)removeQuestionsObject:(Questions *)value;
- (void)addQuestions:(NSSet<Questions *> *)values;
- (void)removeQuestions:(NSSet<Questions *> *)values;

@end

NS_ASSUME_NONNULL_END
