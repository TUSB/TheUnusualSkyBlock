#> entity:death/check
##############################
### エンティティ死亡チェック
##############################

# すでに死亡判定を受けているならばチェックを中断
execute if entity @s[tag=Garbage] run return 1

tag @s add Garbage

#ダメージ表示
execute if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/

execute if entity @s[tag=HasRaise] run function ai:skill/reraise/death_cancel

execute if entity @s[tag=Garbage] run function entity:death/act
