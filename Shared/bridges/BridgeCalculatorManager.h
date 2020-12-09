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
+(BridgeCalculatorManager*) getInstance: (BridgeCalculatorDisplay*) display Provider: (BridgeEngineResourceProvider*) provider;
@end

NS_ASSUME_NONNULL_END
