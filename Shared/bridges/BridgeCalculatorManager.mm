//
//  BridgeCalculatorManager.m
//  RealCalculator
//
//  Created by 于留传 on 2020/12/8.
//

#import "BridgeCalculatorManager.h"
#include "CalculatorManager.h"

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

using namespace CalculatorApp;
using CalculationManager::CalculatorManager;

//static CalculatorManager *cm = NULL;
//static BridgeCalculatorDisplay *bcd = NULL;
//static BridgeEngineResourceProvider *becp = NULL;

@implementation BridgeCalculatorManager

+(CalculatorManager*) getCalculatorManager
{
    static CalculatorManager *m_CalculatorManager = NULL;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        CalculatorDisplay *m_calculatorDisplay = new CalculatorDisplay();
        EngineResourceProvider *m_resourceProvider = new EngineResourceProvider();
        m_CalculatorManager = new CalculatorManager(m_calculatorDisplay, m_resourceProvider);
        
        CalculatorDisplayCallBack *display = new CalculatorDisplayCallBack();
        m_calculatorDisplay->SetCallback(display);
        
        send_command(*m_CalculatorManager, NumbersAndOperatorsEnum::IsStandardMode);
    });
    return m_CalculatorManager;
}

+(void)send_command: (int) num
{
//    if (!initialized){
//        CalculatorManager *cm = [BridgeCalculatorManager getCalculatorManager];
//        send_command(*cm, NumbersAndOperatorsEnum::IsStandardMode);
//        initialized = true;
//    }
    CalculatorManager *cm = [BridgeCalculatorManager getCalculatorManager];
    NumbersAndOperatorsEnum numOpEnum = (NumbersAndOperatorsEnum)num;
    send_command(*cm, numOpEnum);
}

@end
