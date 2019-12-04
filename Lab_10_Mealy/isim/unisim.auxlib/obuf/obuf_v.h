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

#ifndef H_Unisim_obuf_obuf_v_H
#define H_Unisim_obuf_obuf_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Unisim_obuf_obuf_v: public HSim__s6 {
public:

    HSim__s4 PE[4];
    HSim__s1 SE[2];

  char t16;
    Unisim_obuf_obuf_v(const char * name);
    ~Unisim_obuf_obuf_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createUnisim_obuf_obuf_v(const char *name);

#endif
