with builtins; {
  toArrayWithKey = f: m:
    let
      keys = attrNames m;
    in
    map (key: f key (m.${key})) keys;
}
