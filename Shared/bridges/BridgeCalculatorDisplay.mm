//
//  BridgeCalculatorDisplay.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

#import "BridgeCalculatorDisplay.h"
#include "RealCalculator-Swift.h"

@implementation BridgeCalculatorDisplay

+ (BridgeCalculatorDisplay*)getInstance {
    static BridgeCalculatorDisplay *m_calculatorDisplay = NULL;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        m_calculatorDisplay = [[self alloc] init];
    });
    return m_calculatorDisplay;
}

-(void) SetPrimaryDisplay: (NSString*) str isError: (BOOL) flag
{
    printf("from oc SetPrimaryDisplay");
    PrimaryDisplaySetter *pds = [PrimaryDisplaySetter getInstance];
    [pds set_value:str];
}
@end
