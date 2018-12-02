##############################
### 即死床 死亡処理
##############################

gamerule showDeathMessages false
kill @s
tellraw @a ["あ・・・ああっ！  みるみるうちに  のろいが  ",{"selector":"@s"},"のからだを  しんしょくしていく。\nああっ  ",{"selector":"@s"},"は・・・。こうきしんの  だいしょうを  いのちで  はらうことに  なってしまった・・・。"]
gamerule showDeathMessages true
