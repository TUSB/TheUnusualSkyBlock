#> effect:shorten_curse
### ガーディアンの呪いカスタマイズ

say shorten

###進捗トリガーリセット
effect clear @s minecraft:mining_fatigue
advancement revoke @s only effect:shorten_curse

execute if predicate effect:resist run function makeup:effect/bad_effects
execute if predicate effect:resist run return run function effect:resist with storage effect: resist.bad_effect.elder_guardian

###エフェクト付与
effect give @s minecraft:mining_fatigue 15 3
effect give @s minecraft:weakness 15 3
effect give @s minecraft:hunger 15 3
