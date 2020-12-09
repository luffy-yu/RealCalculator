//
//  BridgeCalculatorDisplay.h
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeCalculatorDisplay : NSObject
+(BridgeCalculatorDisplay*) getInstance;
-(void) SetPrimaryDisplay: (NSString*) str isError: (BOOL) flag;
-(void) SetExpressionDisplay: (NSString*) str isError: (BOOL) flag;
@end

NS_ASSUME_NONNULL_END
