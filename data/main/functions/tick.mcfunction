##############################
### 毎ティック処理
##############################

###エリア移動
##overworld
execute in overworld as @a[x=-480,y=0,z=-1136,dx=1039,dy=255,dz=1039] unless score @s Dimension matches 00 run function area_manager:on_change/skylands
execute in overworld as @a[x=-880,y=0,z=-944,dx=399,dy=255,dz=783] unless score @s Dimension matches 10 run function area_manager:on_change/skill_setting_field
execute in overworld as @a[x=-1168,y=0,z=752,dx=511,dy=255,dz=383] unless score @s Dimension matches 11 run function area_manager:on_change/theater
execute in overworld as @a[x=736,y=0,z=-352,dx=751,dy=255,dz=751] unless score @s Dimension matches 12 run function area_manager:on_change/underworld
execute in overworld as @a[x=-288,y=0,z=-3296,dx=639,dy=255,dz=1311] unless score @s Dimension matches 13 run function area_manager:on_change/table_mountain
execute in overworld as @a[x=-3072,y=0,z=-656,dx=1903,dy=255,dz=1103] unless score @s Dimension matches 14 run function area_manager:on_change/cloudia
execute in overworld as @a[x=-224,y=0,z=576,dx=527,dy=255,dz=351] unless score @s Dimension matches 15 run function area_manager:on_change/gullivers_land
execute in overworld as @a[x=768,y=0,z=1008,dx=2063,dy=255,dz=2127] unless score @s Dimension matches 16 run function area_manager:on_change/tocult_colde
#execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=255,dz=1] unless score @s Dimension matches 20 run function area_manager:on_change/nether_trial
##nether
execute in the_nether as @a[x=-736,y=0,z=-1008,dx=1599,dy=255,dz=1679] unless score @s Dimension matches 100 run function area_manager:on_change/nether
execute in the_nether as @a[x=-2272,y=0,z=-464,dx=831,dy=1,dz=831] unless score @s Dimension matches 110 run function area_manager:on_change/nether_dungeon
##end
execute in the_end as @a[distance=0..] unless score @s Dimension matches 210 run function area_manager:on_change/end

###エンティティ発生時処理
execute as @e[tag=!Initialized] run function entity_manager:initialize_entity

###１秒処理
#execute unless entity 0-0-10-0-10 run function main:one_second
scoreboard players add $Second Count 1
execute if score $Second Count matches 20.. run function main:one_second

###パペット移動
execute as @a[tag=WithPuppet] at @s run function puppet_manager:puppet_move


### スポナーカート空気時削除
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run tag @e[dx=0,tag=Spawner] add Garbage

### バリア乗り越え処理
execute as @a at @s unless entity @s[y=-300,dy=555] run tp @s ~ 255 ~
execute as @a at @s run replaceitem entity @s[y=0,dy=-20,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]},nbt=!{Inventory:[{Slot:102b,tag:{Damage:432s}}]}] armor.chest minecraft:elytra{Damage:432s}
#execute as @a at @s if block ~ 0 ~ minecraft:barrier if block ~ 255 ~ minecraft:barrier run kill @s
### 奈落kill
execute as @a at @s if entity @s[y=-250,dy=50] run kill @s

###スニーク時処理
execute as @a[scores={SneakTime=1..}] run function calc_manager:sneak

###バースト現象
execute if score #Aura MP > $10000 Const run scoreboard players remove #Aura MP 1
scoreboard players operation バースト MP = #Aura MP
scoreboard players operation バースト MP < $99999 Const

###アイアンウィル
execute as @a[tag=IronWill] run function skill_manager:iron_will_load

###エンティティ削除処理
function entity_manager:kill_garbage

###スキルエッグ
execute as @a[scores={UseModeEgg=1..}] run function item_manager:change_mode
execute as @a[scores={UseSupportRed=1..}] run function item_manager:use_red_egg
execute as @a[scores={UseSupportBlue=1..}] run function item_manager:use_blue_egg

###ここにスキル処理


### MP消費
execute as @a run function skill_manager:update_mp

###エンティティダメージ付与
execute as @e[tag=Mob,scores={Damage=1..}] at @s run function entity_manager:apply_damage

###カスタムHP回復
execute as @a[scores={HealthHealing=1..}] run function effect_manager:health_healing

###スキル設定表示
execute as @a if score @s ChangeModeRed matches 1..9 run function skill_manager:change_skill/list/mode/red
execute as @a if score @s ChangeModeBlue matches 1..9 run function skill_manager:change_skill/list/mode/blue
execute as @a if score @s ChangeSupRed matches 1..9 run function skill_manager:change_skill/list/support/red
execute as @a if score @s ChangeSupBlue matches 1..9 run function skill_manager:change_skill/list/support/blue
###スキル設定反映
execute as @a unless score @s ChangeModeRed matches 0 run function skill_manager:set_skill/fork/mode/red
execute as @a unless score @s ChangeModeBlue matches 0 run function skill_manager:set_skill/fork/mode/blue
execute as @a unless score @s ChangeSupRed matches 0 run function skill_manager:set_skill/fork/support/red
execute as @a unless score @s ChangeSupBlue matches 0 run function skill_manager:set_skill/fork/support/blue