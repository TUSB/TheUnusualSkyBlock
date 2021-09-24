
### ハスクの空腹カスタマイズ


###エフェクト付与
effect clear @s minecraft:hunger
effect give @s minecraft:hunger 10 0
###進捗トリガーリセット
advancement revoke @s only effects:shorten_husk
