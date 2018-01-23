//
//  ViewController.m
//  TestSwiftInclude
//
//  Created by Александр on 23.01.2018.
//  Copyright © 2018 Александр Баранов. All rights reserved.
//

#import "ViewController.h"
#import "TestSwiftInclude-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setMessage:(NSString *)message {
    _message = message;
    NSLog(@"%@", _message);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"goToSwiftController"]) {
        ViewController2 *vc2 = segue.destinationViewController;
        vc2.message = @"Hellow, Swift!!!";
        vc2.firstViewController = self;
    }
}

@end
