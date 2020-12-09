//
//  CalculatorDisplayCallBack.cpp
//  RealCalculator
//
//  Created by 于留传 on 2020/12/7.
//

#include "RealCalculator-Swift.h"
#include "CalculatorDisplayCallBack.h"
#include "BridgeCalculatorDisplay.h"

static BridgeCalculatorDisplay *display = [BridgeCalculatorDisplay getInstance];

CalculatorDisplayCallBack::CalculatorDisplayCallBack(){
    
}



void CalculatorDisplayCallBack::SetPrimaryDisplay(const std::wstring &str, bool isError) {
    // abstract to common module
    NSString *data  = [[NSString alloc] initWithBytes:str.data() length:str.size() * sizeof(wchar_t) encoding:NSUTF32LittleEndianStringEncoding];
    [display SetPrimaryDisplay:data isError:isError];
}

void CalculatorDisplayCallBack::SetExpressionDisplay(std::wstring &str, bool isError) {
    printf("SetExpressionDisplay2");
    NSString *data  = [[NSString alloc] initWithBytes:str.data() length:str.size() * sizeof(wchar_t) encoding:NSUTF32LittleEndianStringEncoding];
    [display SetExpressionDisplay:data isError:isError];
    
}

