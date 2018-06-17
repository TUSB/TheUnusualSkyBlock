##############################
### はやぶさ斬りダメージ付与
##############################

scoreboard players operation @s Damage += @s FalconDamage
tag @s remove FalconSlashed
###---演出---Start
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run particle minecraft:sweep_attack ~ ~ ~ 0.3 0.3 0.3 0 3 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.82
###---演出---End
