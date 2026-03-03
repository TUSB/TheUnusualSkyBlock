#> effect:shorten_bullet
### シャルカーバレットカスタマイズ

effect clear @s minecraft:levitation
advancement revoke @s only effect:shorten_bullet

execute if predicate effect:resist run function makeup:effect/bad_effects
execute if predicate effect:resist run return run function effect:resist with storage effect: resist.bad_effect.shulker_bullet

###エフェクト付与
effect give @s minecraft:levitation 1 11
  