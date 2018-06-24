##############################
### 不正ディメンション移動時処理
##############################

gamerule showDeathMessages false
kill @s
tellraw @a ["ギャーッ！！  ",{"selector":"@s"},"は  おおごえを  あげながら  とびこんだ。\nしんてんちへ  むかいながら  わたしの  めに  うつったものは…！！\nしにがみだ！！\nわたしを  とらえようと  まちうけている。  …しろい  はを  ちらつかせながら…。"]
gamerule showDeathMessages true
