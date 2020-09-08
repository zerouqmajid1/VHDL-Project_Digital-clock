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

#ifndef H_Work_tb_digital_clock_behavior_H
#define H_Work_tb_digital_clock_behavior_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_tb_digital_clock_behavior: public HSim__s6 {
public:


  char *t29;
  char *t30;
  char *t31;
  char *t32;
HSim__s4 C2n;
    HSim__s1 SA[10];
    Work_tb_digital_clock_behavior(const char * name);
    ~Work_tb_digital_clock_behavior();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_tb_digital_clock_behavior(const char *name);

#endif
