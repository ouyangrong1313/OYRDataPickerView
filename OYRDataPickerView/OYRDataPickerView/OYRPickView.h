//
//  OYRPickView.h
//  OYRDataPickerView
//
//  Created by 欧阳荣 on 17/4/7.
//  Copyright © 2017年 HengTaiXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OYRPickView;

typedef void (^OYRPickViewSubmit)(NSString *);

@interface OYRPickView : UIView<UIPickerViewDelegate>

- (void)setDataViewWithItem:(NSArray *)items title:(NSString *)title;
- (void)showPickView:(UIViewController *)vc;
@property(nonatomic,copy)OYRPickViewSubmit block;




@end
