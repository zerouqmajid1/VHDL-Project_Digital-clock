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

#ifndef H_Work_clk_div_behavioral_H
#define H_Work_clk_div_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_clk_div_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[2];

  char *t0;
    HSim__s1 SA[1];
  char t1;
HSimConstraints *c2;
    Work_clk_div_behavioral(const char * name);
    ~Work_clk_div_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_clk_div_behavioral(const char *name);

#endif
