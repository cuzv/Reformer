//
//  RACSignal+CHXAddition.m
//  Haioo
//
//  Created by Moch Xiao on 7/25/15.
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

#import "RACSignal+CHXAddition.h"

#ifdef RACAddition

@implementation RACSignal (CHXAddition)

- (RACSignal *)filterNil {
    return [self filter:^BOOL(id value) {
        return nil != value;
    }];
}

- (RACSignal *)filterNilErrorMaplocaLizedDescription {
    return [[self filter:^BOOL(NSError *error) {
        return nil != error;
    }] map:^id(NSError *error) {
        return [error localizedDescription];
    }];
}

@end

#endif