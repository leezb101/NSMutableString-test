//
//  MutableStrTools.h
//  NSMutableString——test
//
//  Created by leezb101 on 16/8/30.
//  Copyright © 2016年 leezb101. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MutableStrTools : NSObject

+ (NSMutableAttributedString *)changeColorWithColor:(UIColor *)color TotalString:(NSString *)totalStr SubStringArray:(NSArray *)subArray;
@end
