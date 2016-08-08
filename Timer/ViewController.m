//
//  ViewController.m
//  Timer
//
//  Created by luyunbo on 8/8/16.
//  Copyright © 2016 luyunbo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property(weak,nonatomic) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"timer start");
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(timerFunc) userInfo:nil repeats:YES];
}


-(void)viewDidDisappear:(BOOL)animated {
    [_timer invalidate];
    _timer = nil;
    NSLog(@"timer stop");
}

- (void)timerFunc
{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"MM/dd/YY HH:mm:ss"];
    
    NSString *timestamp = [formatter stringFromDate:[NSDate date]];
    
    [_timeLabel setText:timestamp];//时间在变化的语句
    
//    NSLog(@"%@",timestamp);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
