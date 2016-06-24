//
//  Singleton.h
//  Singleton
//
//  Created by lanouhn on 16/6/2.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (instancetype)allocWithZone:(struct _NSZone *)zone;

+ (instancetype)sharedSingleton;

+ (instancetype)sharedSingletonByGCD;






@end
