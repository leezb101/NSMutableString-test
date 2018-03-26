//
//  MutableStrTools.m
//  NSMutableString——test
//
//  Created by leezb101 on 16/8/30.
//  Copyright © 2016年 leezb101. All rights reserved.
//

#import "MutableStrTools.h"

@implementation MutableStrTools
+ (NSMutableAttributedString *)changeColorWithColor:(UIColor *)color TotalString:(NSString *)totalStr SubStringArray:(NSArray *)subArray {
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:totalStr];
    for (NSString *rangeStr in subArray) {
        NSMutableArray *array = [self getRangeArrayWithTotalString:totalStr SubString:rangeStr];
        for (NSNumber *rangeNum in array) {
            NSRange range = [rangeNum rangeValue];
                    [attributedStr addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
    }
    return attributedStr;
}

+ (NSMutableArray *)getRangeArrayWithTotalString:(NSString *)totalStr SubString:(NSString *)subStr {
    NSMutableArray *arrayRanges = [[NSMutableArray alloc] init];

    if (subStr == nil || [subStr isEqualToString:@""]) {
        return nil;
    }

    NSRange range = [totalStr rangeOfString:subStr];

    if (range.location != NSNotFound && range.length != 0) {
        [arrayRanges addObject:[NSNumber valueWithRange:range]];

        NSRange range1 = {0,0};
        NSInteger location = 0;
        NSInteger length = 0;

        for (int i = 0; ; i++) {
            if (0 == i) {
                location = range.location + range.length;
                length = totalStr.length - range.location - range.length;
                range1 = NSMakeRange(location, length);
            } else {
                location = range1.location + range1.length;
                length = totalStr.length - range1.location - range1.length;
                range1 = NSMakeRange(location, length);
            }

            range1 = [totalStr rangeOfString:subStr options:NSCaseInsensitiveSearch range:range1];

            if (range1.location == NSNotFound || range1.length == 0) {
                break;
            }else {
                [arrayRanges addObject:[NSNumber valueWithRange:range1]];
            }
        }
        return arrayRanges;
    }
    return nil;
}
@end
