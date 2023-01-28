#Function
## RageAttackの取得（+N/3%）
execute store result score # _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack 1
scoreboard players set # Calc 3
scoreboard players operation # _ /= # Calc
## 攻撃力調整
scoreboard players set # Calc 100
scoreboard players operation # _ += # Calc
scoreboard players operation @s Attack *= # _
scoreboard players operation @s Attack /= # Calc
## ダメージ判定その1
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..10] run tag @s add ZedraLanding3
execute positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..10] run tag @s add ZedraLanding3
## ダメージ判定その2
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..6] run tag @s add ZedraLanding
execute positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..6] run tag @s add ZedraLanding2
## ダメージ判定その3
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIYBmAnAAykDsllAtE9SnGwCylx6bAEYA2agEY2E7imH0ATEzgAOBbTAEAdpQC2CZIDDFAAQTNYGJQx6AzknAoA9oS0QkEhQW6u4Ge2AA3SmxCA3AADyR6AigogF84gmtSNEI7RFECGwgrN0RosDhsbDQYGwMmAFYkxxyIAwK0GwBRYtLy5oBHQmDsKABlS25yRAgMUISAXSA_3
# 円 1
execute positioned ^0 ^ ^-4.5 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^2.70515 ^ ^-4.01664 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^4.98562 ^ ^-2.50361 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^6 ^ ^0 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^4.98562 ^ ^2.50361 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^2.70515 ^ ^4.01664 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^0 ^ ^4.5 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^-2.70515 ^ ^4.01664 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^-4.98562 ^ ^2.50361 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^-6 ^ ^0 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^-4.98562 ^ ^-2.50361 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
execute positioned ^-2.70515 ^ ^-4.01664 positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add ZedraLanding2
## デバフ処理
execute as @a unless entity @s[tag=!ZedraLanding,tag=!ZedraLanding2,tag=!ZedraLanding3] run function settings:enemy/skylands/boss/shoot/zedra_aec/2_slash_debuff
## ダメージ処理
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage int 1.25 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding] run function settings:enemy/skylands/boss/shoot/zedra/landing1
execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding2] run function settings:enemy/skylands/boss/shoot/zedra/landing2
execute store result storage score_damage: Argument.Damage int 0.75 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding3] run function settings:enemy/skylands/boss/shoot/zedra/landing3
## 演出
function settings:enemy/skylands/boss/shoot/zedra_aec/2_slash_effect
