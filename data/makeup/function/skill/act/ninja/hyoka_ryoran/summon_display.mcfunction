#> makeup:skill/act/ninja/hyoka_ryoran/summon_display
#
# 氷華繚乱 発動（ディスプレイ召喚）
playsound block.anvil.land player @a ~ ~ ~ 0.6 2 0.6
playsound entity.parrot.imitate.wither player @a ~ ~ ~ 1 1 1

summon block_display ~-6 ~-8 ~-6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[9f,9f,9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoran,HyokaRyoranDisplay,Skill]}
summon block_display ~6 ~-8 ~-6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[-9f,9f,9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoran,HyokaRyoranDisplay,Skill]}
summon block_display ~6 ~-8 ~6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[-9f,9f,-9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoran,HyokaRyoranDisplay,Skill]}
summon block_display ~-6 ~-8 ~6 {block_state:{Name:"packed_ice"},brightness:{block:15,sky:15},transformation:{right_rotation:[0.26f,0.26f,0.26f,1f],scale:[9f,9f,-9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:[HyokaRyoran,HyokaRyoranDisplay,Skill]}
scoreboard players set @e[type=minecraft:block_display,tag=HyokaRyoran] HyokaRyoranTimer 10
scoreboard players set @e[type=minecraft:block_display,tag=HyokaRyoran] NativeFlag 1
tag @e[type=minecraft:block_display,tag=HyokaRyoran] remove HyokaRyoran
