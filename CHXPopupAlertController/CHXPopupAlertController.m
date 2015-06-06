//
//  CHXPopupAlertController.m
//  Haioo
//
//  Created by Moch Xiao on 6/3/15.
//  Copyright (c) 2015 Moch Xiao (https://github.com/atcuan).
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "CHXPopupAlertController.h"

#ifdef EanbleCHXPopupAlertController

@interface CHXPopupAlertController ()

@property (nonatomic, strong) UIImageView *circleIconImageView;
@property (nonatomic, strong) UIView *circleView;
@property (nonatomic, strong) UIView *circleViewBackground;

@end

@implementation CHXPopupAlertController


@dynamic circleIconImageView;
@dynamic circleView;
@dynamic circleViewBackground;

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.circleIconImageView.layer.cornerRadius = 0;
    self.circleView.frame = self.circleViewBackground.bounds;
    self.circleIconImageView.frame = self.circleView.bounds;
    self.circleViewBackground.layer.cornerRadius = 0;
}


@end

#endif

