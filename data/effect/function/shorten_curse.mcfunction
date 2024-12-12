#> effect:shorten_curse
### ガーディアンの呪いカスタマイズ


###エフェクト付与
effect clear @s minecraft:mining_fatigue
effect give @s minecraft:mining_fatigue 15 3
effect give @s minecraft:weakness 15 3
effect give @s minecraft:hunger 15 3
###進捗トリガーリセット
advancement revoke @s only effect:shorten_curse
