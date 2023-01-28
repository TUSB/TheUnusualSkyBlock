#Function
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
execute as @a if entity @s[tag=ZedraLanding2] run function settings:enemy/skylands/boss/shoot/zedra_aec/2_slash_debuff
## ダメージ処理
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding2] run function settings:enemy/skylands/boss/shoot/zedra/landing2
## 演出
function settings:enemy/skylands/boss/shoot/zedra_aec/2_slash_effect
