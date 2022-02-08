
### 即死床 死亡処理

gamerule showDeathMessages false
kill @s
tellraw @a [{"translate":"あ・・・ああっ！  みるみるうちに  のろいが  %1$sのからだを  しんしょくしていく。\nああっ  %1$sは・・・。こうきしんの  だいしょうを  いのちで  はらうことに  なってしまった・・・。","with":[{"selector":"@s"}]}]
gamerule showDeathMessages true
