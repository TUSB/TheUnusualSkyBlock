##############################
### 毎ティック処理
##############################

###エリア移動
##overworld
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 0 run function area_manager:on_change/skylands
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 10 run function area_manager:on_change/skill_setting_field
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 11 run function area_manager:on_change/theater
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 12 run function area_manager:on_change/underworld
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 13 run function area_manager:on_change/table_mountain
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 14 run function area_manager:on_change/cloudia
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 15 run function area_manager:on_change/gullivers_land
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 16 run function area_manager:on_change/tocult_colde
execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 20 run function area_manager:on_change/nether_trial
##nether
execute in the_nether as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 100 run function area_manager:on_change/nether
execute in the_nether as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 110 run function area_manager:on_change/nether_dungeon
##end
execute in the_end as @a[x=0,y=0,z=0,dx=1,dy=1,dz=1] unless score @s Dimension matches 210 run function area_manager:on_change/end

###エンティティ発生時処理
execute as @e[tag=!Initialized] run function entity_manager:initialize_entity

###１秒処理
execute unless entity 0-0-10-0-10 run function main:one_second

### スポナーカート空気時削除
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run tag @e[dx=0,tag=Spawner] add Garbage

### バリア乗り越えkill
execute as @a at @s if block ~ 0 ~ minecraft:barrier if block ~ 255 ~ minecraft:barrier run kill @s

###エンティティ削除処理
function entity_manager:kill_garbage

###カスタムHP回復
execute as @a[scores={HealthHealing=1..}] run function effect_manager:health_healing

###スニーク時処理
execute as @a[scores={SneakTime=1..}] run function calc_manager:sneak

###バースト現象
execute if score #Aura MP > $10000 Const run scoreboard players remove #Aura MP 1
execute unless score バースト MP = #Aura MP run scoreboard players operation バースト MP = #Aura MP
scoreboard players operation バースト MP < $99999 Const

###アイアンウィル
execute as @a[tag=IronWill] run function skill_manager:iron_will_load
