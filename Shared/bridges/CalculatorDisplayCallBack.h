//
//  CalculatorDisplayCallBack.hpp
//  RealCalculator
//
//  Created by 于留传 on 2020/12/7.
//

#ifndef CalculatorDisplayCallBack_h
#define CalculatorDisplayCallBack_h

#include <iostream>

using std::wstring;

class CalculatorDisplayCallBack{
    
public:
    CalculatorDisplayCallBack();
    
public:
    void SetPrimaryDisplay(const wstring & str, bool isError);
};


#endif /* CalculatorDisplayCallBack_h */
