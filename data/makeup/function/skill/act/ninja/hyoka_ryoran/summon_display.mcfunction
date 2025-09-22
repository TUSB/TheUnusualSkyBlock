#> makeup:skill/act/ninja/hyoka_ryoran/summon_display
#
# 氷華繚乱 発動（ディスプレイ召喚）
playsound block.anvil.land player @a ~ ~ ~ 0.6 2 0.6
playsound entity.parrot.imitate.wither player @a ~ ~ ~ 1 1 1

summon block_display ~-6 ~-8 ~-6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[9f,9f,9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoranDisplay,Skill]}
summon block_display ~6 ~-8 ~-6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[-9f,9f,9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoranDisplay,Skill]}
summon block_display ~6 ~-8 ~6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[-9f,9f,-9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoranDisplay,Skill]}
summon block_display ~-6 ~-8 ~6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[9f,9f,-9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoranDisplay,Skill]}
scoreboard players set @e[type=minecraft:block_display,tag=HyokaRyoranDisplay,tag=!Initialized] HyokaRyoranTimer 10
scoreboard players set @e[type=minecraft:block_display,tag=HyokaRyoranDisplay,tag=!Initialized] NativeFlag 1
