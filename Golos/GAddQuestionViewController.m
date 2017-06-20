//
//  GAddQuestionViewController.m
//  Golos
//
//  Created by Gleb R on 02.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "GAddQuestionViewController.h"
#import "GQuestionTableViewController.h"
#import "TabEditCategory.h"
#import "Values.h"

@interface GAddQuestionViewController ()
@property(assign, nonatomic) NSInteger *categor;


@end

@implementation GAddQuestionViewController


NSInteger *categor;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)saveQuestionButton:(id)sender {
    [self addQuestion:self.textQuestion.text];
}

-(void)addQuestion:(NSString*)txtQuestion {
    NSEntityDescription *entityQuestions = [NSEntityDescription entityForName:@"Questions" inManagedObjectContext:[Values sharedValues].persistentContainer.viewContext];
    NSManagedObject *newQuestions = [[NSManagedObject alloc] initWithEntity:entityQuestions insertIntoManagedObjectContext:[Values sharedValues].persistentContainer.viewContext];
        [newQuestions setValue:txtQuestion forKey:@"questions"];
    [[Values sharedValues].persistentContainer.viewContext save:nil];
}


@end
