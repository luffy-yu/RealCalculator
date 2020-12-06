//
//  BridgeCalculatorDisplay.h
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

#import <Foundation/Foundation.h>
#include "CalculatorDisplay.h"

using namespace CalculatorApp;

NS_ASSUME_NONNULL_BEGIN

@interface BridgeCalculatorDisplay : NSObject
+(CalculatorDisplay*) getInstance;
+(void) SetPrimaryDisplay: (NSString*) str;
@end

NS_ASSUME_NONNULL_END
