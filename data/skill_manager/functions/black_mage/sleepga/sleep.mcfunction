##############################
### スリプガ催眠
##############################

### 基準の睡眠時間は30秒
scoreboard players set @s SleepgaTime 30

### 確率でレジスト
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global matches ..9 run scoreboard players operation @s SleepgaTime /= $2 Const
execute if score $Random Global matches ..1 run scoreboard players operation @s SleepgaTime /= $2 Const

data merge entity @s {NoAI:true}

###---演出---Start
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 0.5 2
summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",Radius:1f,Duration:20,Color:2512340}
###---演出---End
