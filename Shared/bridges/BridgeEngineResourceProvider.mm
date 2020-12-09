//
//  BridgeEngineResourceProvider.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/8.
//

#import "BridgeEngineResourceProvider.h"

@implementation BridgeEngineResourceProvider

+ (nonnull BridgeEngineResourceProvider *)getInstance { 
    static BridgeEngineResourceProvider *m_berp = NULL;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        m_berp = [[self alloc] init];
    });
    return m_berp;
}

@end
