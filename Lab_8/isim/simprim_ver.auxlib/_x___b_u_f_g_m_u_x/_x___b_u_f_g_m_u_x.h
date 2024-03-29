////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_simprim_ver_auxlibM_x___b_u_f_g_m_u_x_H
#define H_simprim_ver_auxlibM_x___b_u_f_g_m_u_x_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class simprim_ver_auxlibM_x___b_u_f_g_m_u_x : public HSim__s5{
public: 
    simprim_ver_auxlibM_x___b_u_f_g_m_u_x(const char *instname);
    ~simprim_ver_auxlibM_x___b_u_f_g_m_u_x();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    HSim__s1 us[8];
    HSim__s3 uv[4];
    HSimVlogParam up[1];
};

#endif
