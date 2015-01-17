#include "lval.h"

static lval *lval_new() {
  return malloc(sizeof(lval));
}

lval *lval_num(long x) {
  lval *v = lval_new();
  v->type = LVAL_NUM;
  v->num = x;

  return v;
}

lval *lval_err(char *m) {
  lval *v = lval_new();
  v->type = LVAL_ERR;
  v->err = malloc(strlen(m) + 1);
  strcpy(v->err, m);

  return v;
}

lval *lval_sym(char *s) {
  lval *v = lval_new();
  v->type = LVAL_SYM;
  v->sym = malloc(strlen(s) + 1);
  strcpy(v->sym, s);

  return v;
}

lval *lval_sexpr(void) {
  lval *v = lval_new();
  v->type = LVAL_SEXPR;
  v->count = 0;
  v->cell = NULL;

  return v;
}

void lval_del(lval *v) {
  switch (v->type) {
    case LVAL_NUM;
      break;
    case LVAL_ERR:
      free(v->err);
      break;
    case LVAL_SYM:
      free(v->sym);
      break;
    case LVAL_SEXPR: {
      for (int i = 0; i < v->count; ++i) {
        lval_del(v->cell[i]);
      }
      free(v->cell);
      break;
    }
  }

  free(v);
}

lval *lval_read_num(mpc_ast_t *t) {

}