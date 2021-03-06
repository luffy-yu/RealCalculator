//
//  BridgeOne.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/6.
//

#include <iostream>
#import "BridgeOne.h"
#import "../CM/MainAdaptor.h"
#include "ResourceProvider.h"
#include "CalculatorManager.h"
#include "CalculatorButtonUser.h"
#include "CalculatorDisplay.h"
#include "EngineResourceProvider.h"
#include "CalculatorResource.h"
#include "CEngine/History.h"
#include "BridgeCalculatorDisplay.h"

using namespace std;
using std::cout;

using CalculationManager::CalculatorManager;
using namespace CalculatorApp;

@implementation BridgeOne

@end

#pragma mark -

void call_cpp()
{
    std::cout << "from bridge one" << std::endl;
    
//    [BridgeCalculatorDisplay SetPrimaryDisplay:NULL];
    CalculatorDisplay m_calculatorDisplay;
    EngineResourceProvider m_resourceProvider;
    CalculatorManager m_standardCalculatorManager(&m_calculatorDisplay, &m_resourceProvider);
    
    CalculatorDisplayCallBack *display = new CalculatorDisplayCallBack();
//    CalculatorDisplayCallBack callback;
    m_calculatorDisplay.SetCallback(display);
    
    
    
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::IsStandardMode);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Two);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Add);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Three);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Four);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Five);
    send_command(m_standardCalculatorManager, NumbersAndOperatorsEnum::Equals);
    std::cout << "done" << std::endl;
}
