##############################
### セルフヒール 回復
##############################

### 回復量読み込み
execute store result score $Amount Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Amount 1

scoreboard players operation @s HP += $Amount Global
scoreboard players operation @s HP < @s MaxHP

###---演出---Start
playsound minecraft:entity.bat.hurt master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.generic.drink master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:ambient.underwater.exit master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 15 force @a[tag=ShowParticles]
execute anchored eyes run particle minecraft:portal ^ ^ ^ 0 0 0 1 30 force @a[tag=ShowParticles]
execute anchored eyes run particle minecraft:falling_dust minecraft:red_wool ^ ^0.2 ^ 0.5 0.5 0.5 1 15 force @a[tag=ShowParticles]
###---演出---End
