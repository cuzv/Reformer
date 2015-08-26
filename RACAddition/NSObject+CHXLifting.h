//
//  NSObject+CHXLifting.h
//  Haioo
//
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

#import <Foundation/Foundation.h>

#ifdef RACAddition

@class RACSignal;

@interface NSObject (CHXLifting)

/// The instead of `chx_liftSelector: withSignals:...`, which will not invoke the given selector if target not response.
- (RACSignal *)chx_liftSelector:(SEL)selector withSignals:(RACSignal *)firstSignal, ... NS_REQUIRES_NIL_TERMINATION;

/// The instead of `chx_liftSelector: withSignalsFromArray:`, which will not invoke the given selector if target not response.
- (RACSignal *)chx_liftSelector:(SEL)selector withSignalsFromArray:(NSArray *)signals;

/// The instead of `chx_liftSelector: withSignalOfArguments:`, which will not invoke the given selector if target not response.
- (RACSignal *)chx_liftSelector:(SEL)selector withSignalOfArguments:(RACSignal *)arguments;


@end

#endif