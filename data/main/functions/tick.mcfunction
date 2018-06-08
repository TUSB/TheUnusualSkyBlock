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

###スキルインターバル処理
scoreboard players remove @a SkillInterval 1
###ここからモード処理を入れる（エンティティ発生処理に割り込めるのでやりやすい）
execute as @a[scores={UseSnowball=1..}] at @s run function trigger_manager:snowball
execute as @a[scores={UseBow=1..}] at @s run function trigger_manager:bow
execute as @a[scores={UseCarrotStick=1..}] at @s run function trigger_manager:carrot_stick


###1tick遅れ処理
execute as @e[tag=DelayedTask] at @s run function main:delayed_task

###エンティティ発生時処理
execute as @e[tag=!Initialized] run function entity_manager:initialize_entity

###飛翔物スキル処理
execute as @e[tag=Mob,scores={ProjectileSkill=1..}] at @s run function skill_manager:projectile/check
execute as @e[tag=Projectile,scores={ProjectileSkill=1..}] at @s positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkill = @s ProjectileSkill

###１秒処理
#execute unless entity 0-0-10-0-10 run function main:one_second
scoreboard players add $Second Count 1
execute if score $Second Count matches 20.. run function main:one_second

###接地矢(など)Projectileタグ削除
tag @e[tag=Projectile,nbt={inGround:true}] remove Projectile
###パペット移動
execute as @a[tag=WithPuppet] at @s run function puppet_manager:puppet_move
###ダークスワンプ処理
execute as @e[tag=DarkSwamp,nbt={PortalCooldown:0}] at @s run function skill_manager:black_mage/dark_swamp/tick
###一閃処理
execute as @a[scores={Issen=1..}] at @s run function skill_manager:ninja/issen/tick
###バードストライク処理
execute as @e[tag=BirdStrike,tag=Projectile] at @s run function skill_manager:hunter/bird_strike/tick
###ぽむぽむ花火処理
execute as @e[tag=PomPom,nbt={PortalCooldown:0}] at @s run function skill_manager:summoner/pompom/at0


### スポナーカート空気時削除
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run tag @e[dx=0,tag=Spawner] add Garbage

### バリア乗り越え処理
execute as @a at @s unless entity @s[y=-300,dy=555] run tp @s ~ 255 ~
execute as @a at @s run replaceitem entity @s[y=0,dy=-20,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]},nbt=!{Inventory:[{Slot:102b,tag:{Damage:432s}}]}] armor.chest minecraft:elytra{Damage:432s}
#execute as @a at @s if block ~ 0 ~ minecraft:barrier if block ~ 255 ~ minecraft:barrier run kill @s
### 奈落kill
execute as @a at @s if entity @s[y=-250,dy=50] run kill @s
###めり込み処理
execute as @a[scores={TimeSinceDeath=1..}] at @s anchored eyes if block ^ ^ ^ minecraft:barrier run function entity_manager:suffocation
execute as @a[scores={TimeSinceDeath=1..}] at @s anchored eyes if block ^ ^ ^ minecraft:bedrock run function entity_manager:suffocation

###スニーク時処理
execute as @a[scores={SneakTime=1..}] run function calc_manager:sneak

###バースト現象
execute if score #Aura MP > $10000 Const run scoreboard players remove #Aura MP 1
scoreboard players operation バースト MP = #Aura MP
scoreboard players operation バースト MP < $99999 Const

###アイアンウィル復帰
execute as @a[tag=IronWill] run function skill_manager:knight/iron_will/load

###エンティティ削除処理
function entity_manager:kill_garbage

###スキルエッグ
execute as @a[scores={UseModeEgg=1..}] run function item_manager:change_mode
execute as @a[scores={UseSupportRed=1..}] run function item_manager:use_red_egg
execute as @a[scores={UseSupportBlue=1..}] run function item_manager:use_blue_egg

###ここからサポートスキルを入れる（サポートエッグ使用直後でやりやすい）




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
