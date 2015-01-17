#include <stdio.h>
#include <stdlib.h>

#include <editline/readline.h>

#include "parser.h"
#include "mpc.h"

#define True 1
#define False 0
#define Bool int

int main(int argc, char *argv[]) {
  puts("Lispy Version 0.0.0.0.1");
  puts("Press Ctrl+c to Exit\n");

  lispy_build();

  while (True) {
    char *input = readline("lispy> ");

    add_history(input);

    mpc_result_t r;
    if (mpc_parse("<stdin>", input, Lispy, &r)) {
      lval result = eval(r.output);
      lval_println(result);
      mpc_ast_delete(r.output);
    } else {
      mpc_err_print(r.error);
      mpc_err_delete(r.error);
    }

    free(input);
  }

  lispy_destroy();

  return 0;
}
