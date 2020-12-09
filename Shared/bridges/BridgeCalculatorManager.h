//
//  BridgeCalculatorManager.h
//  RealCalculator
//
//  Created by 于留传 on 2020/12/8.
//

#import <Foundation/Foundation.h>
#import "BridgeCalculatorDisplay.h"
#import "BridgeEngineResourceProvider.h"

NS_ASSUME_NONNULL_BEGIN

@interface BridgeCalculatorManager : NSObject
//+(void)init;
+(void)send_command: (int) num;
@end

//bool initialized = false;

NS_ASSUME_NONNULL_END
