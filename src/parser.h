#ifndef _parser_h
#define _parser_h

#include "mpc.h"
#include "lval.h"

extern mpc_parser_t *Lispy;

void lispy_build();
void lispy_destroy();
lval eval(mpc_ast_t *tree);

#endif
