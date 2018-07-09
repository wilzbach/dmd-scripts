#!/bin/bash
file="$1"

sed "/static char __file__\[\] = __FILE__;/d" -i $file
sed "/\"tassert.h\"/d" -i $file

sed "s/NULL/null/g" -i $file
sed "s/->/./g" -i $file
sed "s/::/./g" -i $file
sed "s/STATIC /private /g" -i $file
sed "s/static /private __gshared /g" -i $file
sed "s/#ifdef DEBUG/debug\n{/g" -i $file
sed "s/#else/}\nelse\n{/g" -i $file
sed "s/#endif/}/g" -i $file
sed "s/#if 0/static if(0)\n{/g" -i $file
sed "s/#if 1/static if(1)\n{/g" -i $file
sed "s/dbg_printf/printf/g" -i $file
sed "s/E1/EV.E1/g" -i $file
sed "s/E2/EV.E2/g" -i $file
sed "s/symbol /Symbol /g" -i $file
sed "s/#if MARS/version (MARS)\n{/g" -i $file
sed "s/#if NTEXCEPTIONS/version (NTEXCEPTIONS)\n{/g" -i $file
sed "s/#if HYDRATE/version (HYDRATE)\n{/g" -i $file
sed "s/#if !MARS/version (MARS) {} else\n{/g" -i $file
sed "s/#if !HTOD/version (HTOD) {} else\n{/g" -i $file
sed "s/#if !SCPP/version (SCPP) {} else\n{/g" -i $file
sed "s/#if !SPP/version (SPP) {} else\n{/g" -i $file
sed "s/#if SCPP/version (SCPP)\n{/g" -i $file
sed "s/#if TX86/version (TX86)\n{/g" -i $file
sed "s/Elvalue(\([^)]*\))/\1.EV.E1/g" -i $file
sed "s/#include *<stdio.h>/import core.stdc.stdio;/" -i $file
sed "s/#include *<string.h>/import core.stdc.string;/" -i $file
sed "s/#include *<stdlib.h>/import core.stdc.stdlib;/" -i $file
sed "s/#include *<assert.h>//" -i $file
sed "s/#include *<time.h>/import core.stdc.time;/" -i $file
sed "s/#include *\"cc.h\"/import dmd.backend.cc;/" -i $file
sed "s/#include *\"el.h\"/import dmd.backend.el;/" -i $file
sed "s/#include *\"iasm.h\"/import iasm;/" -i $file
sed "s/#include *\"parser.h\"/import parser;/" -i $file
sed "s/#include *\"oper.h\"/import dmd.backend.oper;/" -i $file
sed "s/#include *\"type.h\"/import dmd.backend.type;/" -i $file
sed "s/#include *\"go.h\"/import dmd.backend.goh;/" -i $file
sed "s/#include *\"code.h\"/import dmd.backend.code;/" -i $file
sed "s/#include *\"optab.h\"/import dmd.backend.optab;/" -i $file
sed "s/#include *\"tytab.h\"/import dmd.backend.tytab;/" -i $file
sed "s/#include *\"ty.h\"/import dmd.backend.ty;/" -i $file
sed "s/#include *\"global.h\"/import dmd.backend.global;/" -i $file
sed "s/(elem [*])/cast(elem *)/g" -i $file
sed "s/unsigned long/ulong/g" -i $file
sed "s/unsigned char/ubyte/g" -i $file
sed "s/unsigned/uint/g" -i $file
sed "s/ volatile /\/*volatile*\//g" -i $file
sed "s/FALSE/false/g" -i $file
sed "s/TRUE/true/g" -i $file
sed "s/sizeof(\([^)]*\))/\1.sizeof/g" -i $file
sed "s/cmes(\([^)]*\))/debug if (debugc) printf(\1)/g" -i $file
sed "s/__inline/pragma(inline, true)/g" -i $file
sed "s/\([a-zA-Z_]*\) \([a-zA-Z_]*\)\[\([a-zA-Z_]*\)\];/\1[\3] \2;/" -i $file
sed "s/ = (\([^)]*[*]\))/ = cast(\1)/g" -i $file # c style casts
sed "s/Bblknum/blknum/" -i $file
sed "s/tserr/tsint/" -i $file
sed "s/tsint/tstypes[TYint]/" -i $file
sed "s/tsvoid/tstypes[TYvoid]/" -i $file
sed "s/d_size_t/size_t/" -i $file
sed "s/EOP(\([^)]*\))/!OTleaf(\1.Eoper)/g" -i $file
sed "s/cmes2(\([^)]*\))/debug if (debugc) printf(\1)/g" -i $file
sed "s/cmes3(\([^)]*\))/debug if (debugc) printf(\1)/g" -i $file
sed "s/debug_assert/debug assert/" -i $file
sed "s/[.]BS[.]Bswitch/.Bswitch/g" -i $file
sed "s/[.]EV[.]sp[.]/.EV./g" -i $file
sed "s/list_ptr(\([^)]*\)) = /\1.ptr = /g" -i $file
sed "s/list_next(\([^)]*\)) = /\1.next = /g" -i $file
