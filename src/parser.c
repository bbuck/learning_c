#include "parser.h"

static mpc_parser_t *Number;
static mpc_parser_t *Symbol;
static mpc_parser_t *Sexpr;
static mpc_parser_t *Expr;
mpc_parser_t *Lispy;

void lispy_build() {
  Number = mpc_new("number");
  Symbol = mpc_new("symbol");
  Sexpr = mpc_new("sexpr");
  Expr = mpc_new("expr");
  Lispy = mpc_new("lispy");

  mpca_lang(MPCA_LANG_DEFAULT,
      " \
      number : /-?[0-9]+/ ; \
      symbol : '+' | '-' | '*' | '/' ; \
      sexpr : '(' <expr>* ')' ; \
      expr : <number> | <symbol> | <sexpr> ; \
      lispy : /^/ <expr>* /$/ ; \
      ",
      Number, Symbol, Sexpr, Expr, Lispy);
}

void lispy_destroy() {
  mpc_cleanup(5, Number, Symbol, Sexpr, Expr, Lispy);
}

// Interpreter

static lval lval_num(long x) {
  lval v;
  v.type = LVAL_NUM;
  v.num = x;
  return v;
}

static lval lval_err(int x) {
  lval v;
  v.type = LVAL_ERR;
  v.err = x;
  return v;
}

void lval_print(lval v) {
  switch (v.type) {
    case LVAL_NUM:
      printf("%li", v.num);
      break;
    case LVAL_ERR: {
      if (v.err == LERR_DIV_ZERO) {
        printf("Error: Division by Zero!");
      } else if (v.err == LERR_BAD_OP) {
        printf("Error: Invalid Operator!");
      } else if (v.err == LERR_BAD_NUM) {
        printf("Error: Invalid Number!");
      }
      break;
    }
  }
}

void lval_println(lval v) {
  lval_print(v);
  putchar('\n');
}

static lval eval_op(lval x, char *op, lval y) {
  if (x.type == LVAL_ERR) { return x; }
  if (y.type == LVAL_ERR) { return y; }

  if (strcmp(op, "+") == 0) { return lval_num(x.num + y.num); }
  if (strcmp(op, "-") == 0) { return lval_num(x.num - y.num); }
  if (strcmp(op, "*") == 0) { return lval_num(x.num * y.num); }
  if (strcmp(op, "/") == 0) {
    return y.num == 0
      ? lval_err(LERR_DIV_ZERO)
      : lval_num(x.num / y.num);
  }

  return lval_err(LERR_BAD_OP);
}

lval eval(mpc_ast_t *tree) {
  if (strstr(tree->tag, "number")) {
    errno = 0;
    long x = strtol(tree->contents, NULL, 10);
    return errno != ERANGE ? lval_num(x) : lval_err(LERR_BAD_NUM);
  }

  char *op = tree->children[1]->contents;
  lval x = eval(tree->children[2]);

  int i = 3;
  while (strstr(tree->children[i]->tag, "expr")) {
    x = eval_op(x, op, eval(tree->children[i]));
    ++i;
  }

  return x;
}