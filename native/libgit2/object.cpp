#include "object.h"

ERL_NIF_TERM
geef_object_id(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    ErlNifBinary bin;
    const git_oid *id;
    geef_object *obj;

    if (!enif_get_resource(env, argv[0], geef_object_type, (void **) &obj))
        return enif_make_badarg(env);

    id = git_object_id(obj->obj);

    return enif_make_tuple2(env, atoms.ok, enif_make_binary(env, &bin));
}
