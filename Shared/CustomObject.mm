//
//  CustomObject.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/5.
//

#import "CustomObject.h"
#include "RealCalculator-Swift.h"
//#include "cmoc/MainAdaptor.h"
#import "bridges/BridgeOne.h"

@implementation CustomObject
- (int) get_number:(int)number
{
    [self call_btn];
    return 100;
}

- (void) call_btn
{
//    MyClass *mc = [MyClass new];
//    NSLog([mc get_name]);
    call_cpp();
}
//- (void)call_btn {
//    CalculatorDisplay m_calculatorDisplay;
//    EngineResourceProvider m_resourceProvider;
//    CalculatorManager m_standardCalculatorManager(&m_calculatorDisplay, &m_resourceProvider);
//    //m_calculatorDisplay.SetCallback(calculatorViewModel);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::IsStandardMode);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Two);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Add);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Three);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Four);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Five);
//    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Equals);
//}

@end
