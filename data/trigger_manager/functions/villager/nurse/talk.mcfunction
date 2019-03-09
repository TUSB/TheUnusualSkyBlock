##############################
### ナース 会話
##############################

#Cost = Level/5+1
execute store result score $Emerald Global run clear @s minecraft:emerald 0
scoreboard players operation $Cost Global = @s Level
scoreboard players operation $Cost Global /= $5 Const
scoreboard players add $Cost Global 1

tellraw @s ["",{"selector":"@e[tag=Nurse,sort=nearest]"},{"text":" : あなたの傷を治療しましょう。\n手当てを受ける : "},{"score":{"name":"$Cost","objective":"Global"},"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VillagerTrigger set 1"}},{"text":"エメラルド","color":"green","clickEvent":{"action":"run_command","value":"/trigger VillagerTrigger set 1"}}]

###---演出---Start
playsound minecraft:entity.villager.ambient master @a[distance=..16] ~ ~ ~ 1 1.6
###---演出---End
