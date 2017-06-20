//
//  Category+CoreDataProperties.h
//  Golos
//
//  Created by Gleb R on 20.06.2017.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//
//

#import "Category+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Category (CoreDataProperties)

+ (NSFetchRequest<Category *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *category;
@property (nullable, nonatomic, retain) NSSet<Questions *> *catQuestions;

@end

@interface Category (CoreDataGeneratedAccessors)

- (void)addCatQuestionsObject:(Questions *)value;
- (void)removeCatQuestionsObject:(Questions *)value;
- (void)addCatQuestions:(NSSet<Questions *> *)values;
- (void)removeCatQuestions:(NSSet<Questions *> *)values;

@end

NS_ASSUME_NONNULL_END
