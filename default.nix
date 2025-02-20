builtins.mapAttrs (name: value: let
  fileExtensions = ["png" "jpg" "jpeg"];
  file = let
    findFile = builtins.filter builtins.pathExists (map (ext: ./images/${name}.${ext}) fileExtensions);
  in
    if findFile != []
    then builtins.head findFile
    else builtins.throw "Wallpaper '${name}' does not exist or extension is not ${builtins.concatStringsSep "," fileExtensions}";
in {
  path = file;
  tags = value;
  hash = builtins.hashFile "sha256" file;
})
{
  "64840888_p0" = ["akima" "blue" "dark" "futuristic" "city" "girl"];
  "66540983_p0" = ["akima" "blue" "dark" "night" "snowy" "city"];
  "76205846_p0" = ["akima" "blue" "girl" "portrait" "indoor"];
  "62031907_p0" = ["akima" "blue" "night" "city" "girl"];
  "62454928_p0" = ["akima" "blue" "night" "girl"];
  "68779457_p0" = ["akima" "dark" "indoor" "girl" "portrait"];
  "72514196_p0" = ["akima" "dark" "sunset" "girl" "window" "city"];
  "76079630_p0" = ["akima" "gray" "girl" "portrait" "indoor"];
  "112923224_p1" = ["akima" "gray" "girl" "portrait" "rainy"];
  "99746284_p0" = ["akima" "gray" "girl" "portrait"];
  "66145266_p0" = ["akima" "gray" "girl" "rainy"];
  "77545409_p0" = ["akima" "gray" "indoor" "girl" "futuristic"];
  "64208125_p0" = ["akima" "gray" "indoor" "girl" "portrait"];
  "76721553_p0" = ["akima" "gray" "indoor" "girl" "window" "sunset" "cloudy"];
  "66312319_p0" = ["akima" "gray" "indoor" "night" "girl"];
  "74125530_p0" = ["akima" "gray" "light" "ruins" "girl"];
  "90877153_p0" = ["akima" "gray" "light" "sky" "girl" "futuristic"];
  "67845232_p0" = ["akima" "green" "girl" "portrait" "indoor"];
  "58288977_p0" = ["akima" "light" "furutistic" "girl"];
  "68228271_p0" = ["akima" "light" "girl" "portrait" "nature"];
  "78345825_p0" = ["akima" "yellow" "girl" "portrait" "city" "futuristic"];
  "60858814_p0" = ["akima" "yellow" "sunrise" "futuristic" "city" "girl"];
  "64013673_p0" = ["akima" "yellow" "sunrise" "futuristic" "city" "girl"];
  "73710499_p0" = ["akima" "yellow" "sunset" "rainy" "girl" "city"];
  wallhaven-4dgl7m = ["blue" "city" "futuristic" "detailed" "girl"];
  wallhaven-8x16mo = ["blue" "dark" "night" "city" "snowy"];
  wallhaven-8x6lxo = ["blue" "dark" "night" "girl" "portrait"];
  wallhaven-ne9exw = ["blue" "dark" "ruins" "city"];
  wallhaven-d5qwmo = ["blue" "futuristic" "sky" "girl"];
  wallhaven-49wj8w = ["blue" "girl" "minimalistic" "railings" "portrait"];
  wallhaven-73d1e3 = ["blue" "girl" "portrait" "sky"];
  wallhaven-y8y15x = ["blue" "girl" "sky" "city"];
  wallhaven-76gkey = ["blue" "girl" "window"];
  wallhaven-8ozzxk = ["blue" "green" "sky" "nature" "mountains"];
  wallhaven-g8rkml = ["blue" "green" "sky" "ruins" "girl"];
  wallhaven-0wy27r = ["blue" "indoor" "window"];
  wallhaven-r2y5dj = ["blue" "light" "city" "sky" "sunrise"];
  wallhaven-z8pm7y = ["blue" "nature" "sky" "girl" "minimalistic"];
  wallhaven-wq59xx = ["blue" "nature" "sky" "town" "road"];
  wallhaven-96y9qk = ["blue" "night" "nature"];
  wallhaven-6qzg1x = ["blue" "sky" "city"];
  wallhaven-x8922o = ["blue" "sky" "futuristic" "detailed" "nature"];
  wallhaven-oxpgl9 = ["blue" "sky" "girl"];
  wallhaven-dgdmol = ["blue" "town" "detailed"];
  wallhaven-l36zrl = ["blue" "town" "girl" "sky" "nature"];
  wallhaven-57l6v1 = ["blue" "twilight" "girl" "town" "rainy" "road"];
  wallhaven-nm2d80 = ["blue" "window" "sky"];
  wallhaven-76qoov = ["detailed" "city"];
  wallhaven-nmkwk0 = ["detailed" "futuristic" "city"];
  unknown-905219 = ["girls_last_tour" "blue" "dark" "rainy"];
  wallhaven-1pdwow = ["girls_last_tour" "blue" "light" "girl" "portrait" "futuristic"];
  wallhaven-ymm6kl = ["girls_last_tour" "dark" "detailed" "girl" "indoor"];
  wallhaven-qdxpjd = ["girls_last_tour" "dark" "girl"];
  wallhaven-pkeg53 = ["girls_last_tour" "gray" "city" "ruins" "girl" "portrait"];
  wallhaven-x65x6d = ["girls_last_tour" "light" "minimalistic" "girl" "portrait"];
  wallhaven-x1rkev = ["girls_last_tour" "light" "snowy" "girl"];
  wallhaven-gjooee = ["girls_last_tour" "orange" "girl" "portrait" "indoor"];
  wallhaven-e72j28 = ["gray" "city" "rainy"];
  wallhaven-nrxwv1 = ["gray" "city" "road" "rainy"];
  wallhaven-nzjv7o = ["gray" "girl" "city" "window" "portrait"];
  wallhaven-ym9zzg = ["gray" "girl" "portrait" "town" "road" "cloudy"];
  wallhaven-o3j2x5 = ["gray" "nature" "girl" "portrait" "rainy"];
  wallhaven-j5g6ry = ["gray" "ruins" "rainy" "girl"];
  wallhaven-2eojex = ["green" "blue" "ruins" "nature"];
  wallhaven-md2xlk = ["green" "city" "ruins"];
  wallhaven-vgd3gl = ["green" "city" "ruins"];
  wallhaven-gpqypd = ["green" "forest" "nature"];
  wallhaven-gpq337 = ["green" "forest"];
  wallhaven-p2le2p = ["green" "futuristic" "detailed" "ruins"];
  wallhaven-42k9vy = ["green" "gray" "nature" "city" "rainy"];
  wallhaven-2e5yvm = ["green" "indoor" "girl"];
  wallhaven-qz21l7 = ["green" "light" "nature" "forest" "town" "majestic"];
  wallhaven-3lwxdd = ["green" "nature" "field"];
  wallhaven-96l5xd = ["green" "nature" "forest" "man"];
  wallhaven-0jxlow = ["green" "nature" "forest"];
  wallhaven-85k2lj = ["green" "nature" "forest"];
  wallhaven-4791zy = ["green" "nature" "forest"];
  wallhaven-yxedxg = ["green" "nature" "forest"];
  wallhaven-z8zgqw = ["green" "nature" "sky" "mountains"];
  wallhaven-13xxjg = ["green" "nature" "town"];
  "73496746_p0" = ["ichigoame" "blue" "dark" "underwater" "indoor" "girl" "shade"];
  "83170753_p0" = ["ichigoame" "blue" "light" "underwater" "ruins" "sky" "girl" "shade"];
  "73114426_p0" = ["ichigoame" "blue" "light" "underwater" "sky" "girl" "shade"];
  "72839713_p0" = ["ichigoame" "blue" "pink" "dark" "underwater" "indoor" "girl" "shade"];
  "79826595_p0" = ["ichigoame" "blue" "pink" "light" "underwater" "indoor" "girl" "portrait" "shade" "noise"];
  "84719437_p0" = ["ichigoame" "blue" "underwater" "girl" "shade"];
  "85850753_p0" = ["ichigoame" "blue" "underwater" "indoor" "girl" "portrait" "shade"];
  "92786671_p0" = ["ichigoame" "blue" "underwater" "indoor" "girl" "shade"];
  "85626613_p0" = ["ichigoame" "blue" "underwater" "indoor" "girl" "shade"];
  "83647245_p0" = ["ichigoame" "blue" "underwater" "sky" "girl" "shade"];
  "77816288_p0" = ["ichigoame" "light" "underwater" "town" "sky" "girl" "shade" "noise"];
  "79826536_p0" = ["ichigoame" "pink" "light" "underwater" "indoor" "girl" "cat" "shade" "noise"];
  "86156219_p0" = ["ichigoame" "purple" "pink" "underwater" "indoor" "girl" "portrait" "shade"];
  "65605301_p0" = ["jiao_cha" "blue" "indoor" "window" "shade" "girl"];
  "69864024_p0" = ["jiao_cha" "blue" "light" "shade" "girl" "portrait"];
  "70265599_p0" = ["jiao_cha" "blue" "orange" "sky" "shade" "girl"];
  "75102868_p0" = ["jiao_cha" "blue" "shade" "girl" "nature"];
  "78417838_p0" = ["jiao_cha" "blue" "shade" "girl" "portrait"];
  "66103386_p0" = ["jiao_cha" "blue" "shade" "girl"];
  "66364166_p2" = ["jiao_cha" "blue" "shade" "girl"];
  "71295163_p0" = ["jiao_cha" "blue" "shade" "girl"];
  "72038523_p0" = ["jiao_cha" "blue" "shade" "girl"];
  "74075845_p0" = ["jiao_cha" "blue" "sky" "futuristic" "road" "shade" "girl"];
  "74851178_p0" = ["jiao_cha" "blue" "sky" "nature" "shade" "girl"];
  "70123969_p0" = ["jiao_cha" "blue" "sky" "shade" "girl" "portrait"];
  "67308965_p0" = ["jiao_cha" "blue" "sky" "shade" "girl"];
  "70022600_p0" = ["jiao_cha" "blue" "sky" "shade" "girl"];
  "68936009_p0" = ["jiao_cha" "blue" "sky" "town" "shade" "girl"];
  "69580290_p0" = ["jiao_cha" "blue" "town" "nature" "shade" "girl" "portrait"];
  "66364166_p0" = ["jiao_cha" "blue" "yellow" "night" "road" "shade" "girl" "portrait"];
  "70022444_p0" = ["jiao_cha" "dark" "light" "shade" "girl" "portrait"];
  "69227626_p0" = ["jiao_cha" "dark" "night" "shade" "girl"];
  "61368190_p0" = ["jiao_cha" "light" "mountains" "shade" "girl"];
  "72109603_p0" = ["jiao_cha" "light" "shade" "girl" "portrait"];
  "72599030_p0" = ["jiao_cha" "light" "shade" "girl" "portrait"];
  "69717321_p0" = ["jiao_cha" "orange" "indoor" "shade" "girl" "portrait"];
  "75188095_p0" = ["jiao_cha" "orange" "indoor" "shade" "girl" "portrait"];
  "78145222_p0" = ["jiao_cha" "orange" "indoor" "shade" "girl" "portrait"];
  "81754094_p0" = ["jiao_cha" "orange" "indoor" "shade" "girl"];
  "64337772_p0" = ["jiao_cha" "pink" "city" "sky" "sunset" "shade" "girl" "portrait"];
  "78145165_p0" = ["jiao_cha" "pink" "shade" "girl" "portrait"];
  "78145235_p0" = ["jiao_cha" "pink" "shade" "girl" "portrait"];
  "72312706_p0" = ["jiao_cha" "yellow" "shade" "girl" "night"];
  "68304229_p0" = ["jiao_cha" "yellow" "shade" "girl" "portrait"];
  wallhaven-zxr3rg = ["light" "detailed" "road"];
  unknown-2dcWLKO = ["light" "girl" "portrait"];
  wallhaven-odkykm = ["ping" "dark" "sunset" "girl"];
  wallhaven-x1851d = ["pink" "city" "detailed" "rainy"];
  wallhaven-3zev16 = ["pink" "dark" "city" "indoor" "girl" "ruins"];
  wallhaven-q23q85 = ["pink" "sky" "town" "majestic"];
  "83980769_p0" = ["touko" "blue" "gray" "sky" "underwater" "girl" "portrait" "shade"];
  "83319109_p0" = ["touko" "blue" "light" "shade" "girl"];
  "87422469_p0" = ["touko" "blue" "light" "sky" "underwater" "girl" "portrait" "shade"];
  "84684220_p0" = ["touko" "orange" "dark" "night" "girl" "shade"];
  "78048426_p0" = ["touko" "purple" "pink" "city" "girl" "shade" "sky"];
  wallhaven-lnzv49 = ["yellow" "dark" "night" "detailed" "city" "futuristic"];
  wallhaven-1k2y73 = ["yellow" "sunrise" "girl" "portrait"];
}
