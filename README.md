### Seed corpus

The repository contains seed corpus and dictionaries for Lua
fuzzing tests.

### Merge corpuses

```sh
build/tests/capi/luaL_loadbuffer_proto/luaL_loadbuffer_proto_test -set_cover_merge=1 CORPUS NEW_CORPUS
build/tests/capi/luaL_loadbuffer_proto/luaL_loadbuffer_proto_test -merge=1 CORPUS NEW_CORPUS
```

### Maintenance

To prevent repository bloat:

```sh
git rev-list --disk-usage --objects --all
git reset --soft HEAD~2000 && git commit -m "Corpus squash"
git prune --progress
git gc
```

Validate Lua syntax in samples:

```sh
find lua/ -name '*.lua' -print0 | xargs --null -i lua {}
find lua/ -name '*.lua' -print0 | xargs --null -i luajit {}
```
