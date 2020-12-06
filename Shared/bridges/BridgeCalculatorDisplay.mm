//
//  BridgeCalculatorDisplay.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

#import "BridgeCalculatorDisplay.h"

@implementation BridgeCalculatorDisplay

+ (CalculatorDisplay*)getInstance {
//    static BridgeCalculatorDisplay *ins = NULL;
//    if (!ins){
//        ins = [[self alloc] init];
//    }
//    return ins;
    printf("call getInstance");
    static CalculatorDisplay *m_calculatorDisplay = NULL;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        m_calculatorDisplay = new CalculatorDisplay();
    });
    return m_calculatorDisplay;
}

+(void) SetPrimaryDisplay: (NSString*) str
{
    CalculatorDisplay *dis = [BridgeCalculatorDisplay getInstance];
    dis->SetCallback();
    printf("from oc SetPrimaryDisplay");
}
@end

//#pragma mark -



