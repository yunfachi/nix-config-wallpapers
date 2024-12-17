{wallpapers, ...}: let
  fileExtensions = ["png" "jpg" "jpeg"];

  getFileNameWithExtension = name: let
    validExtensions = builtins.filter (ext: builtins.pathExists ./images/${name}.${ext}) fileExtensions;
  in
    if builtins.length validExtensions > 0
    then "${name}.${builtins.head validExtensions}"
    else null;

  toPairs = attrset:
    builtins.map (key: "![](./images/${getFileNameWithExtension key})<br>**tags**: ${builtins.concatStringsSep ", " attrset.${key}.tags}")
    (builtins.attrNames attrset);

  pairs = toPairs wallpapers;

  chunk = list: size: let
    len = builtins.length list;
    makeChunk = i:
      builtins.filter (x: x >= i && x < i + size)
      (builtins.genList (n: n) len);
  in
    builtins.map (i: builtins.map (n: builtins.elemAt list n) (makeChunk i))
    (builtins.genList (n: n * size) ((len + size - 1) / size));

  chunkToString = sublist: "|" + builtins.concatStringsSep "|" sublist + "|";

  result =
    builtins.concatStringsSep "\n"
    (builtins.map chunkToString (chunk pairs 3));
in ''
  |total wallpapers: ${toString (builtins.length (builtins.attrNames wallpapers))}|||
  |-|-|-|
  ${result}
''
