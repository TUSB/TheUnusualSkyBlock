##############################
### ナース コスト判定
##############################

#Cost = Level/5+1
execute store result score $Emerald Global run clear @s minecraft:emerald 0
scoreboard players operation $Cost Global = @s Level
scoreboard players operation $Cost Global /= $5 Const
scoreboard players add $Cost Global 1

###---演出---Start
execute if score $Emerald Global < $Cost Global run playsound minecraft:entity.villager.no master @a[distance=..16] ~ ~ ~ 1 1.6
###---演出---End

execute if score $Emerald Global >= $Cost Global run function trigger_manager:villager/nurse/heal
execute if score $Emerald Global < $Cost Global run tellraw @s ["",{"selector":"@e[tag=Nurse,limit=1,sort=nearest]"},{"text":" : ただ働きはいたしません。"}]

