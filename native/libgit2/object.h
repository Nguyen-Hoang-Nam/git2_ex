#ifndef GIT2_EX_OBJECT_H
#define GIT2_EX_OBJECT_H

#include <erl_nif.h>
#include <git2.h>

extern ErlNifResourceType *geef_object_type;

typedef struct {
    git_object *obj;
} geef_object;

typedef struct {
    ERL_NIF_TERM ok;
    ERL_NIF_TERM error;

    ERL_NIF_TERM enomem;
    ERL_NIF_TERM eunknown;
} geef_atoms;

extern geef_atoms atoms;

ERL_NIF_TERM geef_object_id(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]);

#endif // !GIT2_EX_OBJECT_H
