//
//  BridgeCalculatorManager.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/8.
//

#import "BridgeCalculatorManager.h"
#include "CalculatorManager.h"

using CalculationManager::CalculatorManager;

static CalculatorManager *cm = NULL;
static BridgeCalculatorDisplay *bcd = NULL;
static BridgeEngineResourceProvider *becp = NULL;

@implementation BridgeCalculatorManager

//+ (nonnull BridgeCalculatorManager *)getInstance { 
//    static BridgeCalculatorManager *m_bcm = NULL;
//    static dispatch_once_t once;
//    dispatch_once(&once, ^{
//        m_bcm = [[self alloc] init];
//    });
//    return m_bcm;
//}

+ (nonnull BridgeCalculatorManager *)getInstance:(nonnull BridgeCalculatorDisplay *)display Provider:(nonnull BridgeEngineResourceProvider *)provider {
    bcd = display;
    becp = provider;
    static BridgeCalculatorManager *m_bcm = NULL;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        m_bcm = [[self alloc] init];
    });
    return m_bcm;
}

@end
