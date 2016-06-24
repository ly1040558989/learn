//
//  Singleton.m
//  Singleton
//
//  Created by lanouhn on 16/6/2.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

// 重写 + allocWithZone: 方法
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static id instance = nil;
    @synchronized(self) { // 用 @synchronized 来保证线程安全
        if (instance == nil) {
            instance = [super allocWithZone:zone];
        }
    }

    return instance;
}


// 直接用@synchronized 来保证线程安全
+ (instancetype)sharedSingleton {
    static id instance = nil;
    @synchronized(self) {
        if (!instance) {
             instance = [[self alloc] init];
        }
    
    }

    return instance;

}


// GCD
+ (instancetype)sharedSingletonByGCD {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });

    return instance;

}









@end
