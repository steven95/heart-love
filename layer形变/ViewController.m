//
//  ViewController.m
//  layer形变
//
//  Created by Jusive on 15/11/28.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *xinV;
@property (weak,nonatomic) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    CALayer *layer = [CALayer layer];
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.frame = CGRectMake(100 , 200,100, 100);
//    layer.anchorPoint = CGPointMake(0, 0);
//    layer.contents = (id)[UIImage imageNamed:@"心"].CGImage;
//    [self.view.layer addSublayer:layer];
//    
    // Do any additional setup after loading the view, typically from a nib.
    
            CALayer *layer = [CALayer layer];
    
   
        self.layer = layer;
        layer.contents = (id)[UIImage imageNamed:@"心"].CGImage;
   
    layer.frame = CGRectMake(200, 200, 50, 50);
   [self.view.layer addSublayer:layer];
  
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
//       [self.xinV.layer setValue:@M_PI forKeyPath:@"transform.rotation.y"];
       
//       self.xinV.layer.transform  = CATransform3DMakeTranslation(250, 250, 0);
       
//       self.xinV.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
       
//       NSValue *value = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 1)];
//       [self.xinV.layer setValue:@0.5 forKeyPath:@"transform.scale"];
       
//       self.xinV.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
  
    for (int i = 0; i < arc4random_uniform(500); i++) {
        CALayer *layer = [CALayer layer];
        self.layer = layer;
        layer.contents = (id)[UIImage imageNamed:@"心"].CGImage;
        layer.frame = CGRectMake(arc4random_uniform(375), arc4random_uniform(667), 50, 50);
        layer.cornerRadius = 25;
     self.view.layer.masksToBounds = YES;
        [self.view.layer addSublayer:layer];
    }
       [self.view.layer.sublayers enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
           [UIView animateWithDuration:1 animations:^{
           CABasicAnimation *anim = [CABasicAnimation animation];
           anim.keyPath = @"transform.scale";
           anim.toValue = @0.5;
               
           anim.repeatCount = 100;
        [obj addAnimation:anim forKey:nil];
               
       }];
   }];
    
    [self viewDidLoad];
    [self.layer removeFromSuperlayer];
    self.layer = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
