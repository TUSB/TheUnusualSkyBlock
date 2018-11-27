##############################
### アイアンウィル位置ロード
##############################

###TPで慣性削除
scoreboard players operation @e[tag=IronWillPosition] ID -= @s ID
tp @s @e[tag=IronWillPosition,scores={ID=0},limit=1]
scoreboard players operation @e[tag=IronWillPosition] ID += @s ID
###タグ削除
tag @s remove IronWill

###---演出---Start
execute positioned as @s run playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.5 2
execute positioned as @s run particle minecraft:item minecraft:dispenser ~ ~0.5 ~ 1.5 0.2 1.5 0.15 50 force @a[tag=ShowParticles]
###---演出---End
