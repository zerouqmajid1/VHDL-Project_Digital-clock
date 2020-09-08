////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_digital_clock_behavioral_H
#define H_Work_digital_clock_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_digital_clock_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[10];

    HSim__s1 SA[8];
HSimConstraints *c11;
  char *t12;
  int t13;
    Work_digital_clock_behavioral(const char * name);
    ~Work_digital_clock_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_digital_clock_behavioral(const char *name);

#endif
