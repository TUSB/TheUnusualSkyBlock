##############################
### 毎ティック処理
##############################

###デクリメンタ(set/operation=以外禁止)
scoreboard players remove * DecrementTimer 1
##################################################     毎tick非ワールド依存処理の壁     ##################################################
###敵被ダメ時処理(ここ以外HurtTime使用禁止)
execute as @e[tag=Mob,nbt={HurtTime:10s}] at @s run function enemy_manager:on_damaged
##################################################     全体スコープ処理の壁     ##################################################

### 死んでから起きた時の処理
execute as @a[scores={Hunger=0..,Age=1..}] at @s run function effect_manager:status/rise
### レーダーヴィジョン処理
execute as @a[scores={RaderVision=0..}] at @s run function skill_manager:hunter/rader_vision/tick
##################################################     移動させてからブロック参照させないといけない処理の壁     ##################################################

### 奈落kill
execute as @a at @s if entity @s[y=-250,dy=50] run kill @s
###めり込み処理
execute as @a[scores={Age=1..},gamemode=!spectator,gamemode=!creative] at @s anchored eyes if block ^ ^ ^ #main:unbreakable run function entity_manager:suffocation
### 特殊床
execute as @a[scores={Age=1..},gamemode=!spectator,gamemode=!creative] positioned as @s if block ~ ~-2 ~ #main:unique_floors run function entity_manager:unique_floor
##################################################     非エリア依存ブロック参照処理の壁     ##################################################

###エリア移動
##overworld
execute in overworld as @a[x=-480,y=0,z=-1136,dx=1039,dy=255,dz=1039,gamemode=!spectator] unless score @s Dimension matches 00 run function area_manager:on_change/skylands
execute in overworld as @a[x=-880,y=0,z=-944,dx=399,dy=255,dz=783,gamemode=!spectator] unless score @s Dimension matches 10 run function area_manager:on_change/skill_setting_field
execute in overworld as @a[x=-1168,y=0,z=752,dx=511,dy=255,dz=383,gamemode=!spectator] unless score @s Dimension matches 11 run function area_manager:on_change/theater
execute in overworld as @a[x=736,y=0,z=-352,dx=751,dy=255,dz=751,gamemode=!spectator] unless score @s Dimension matches 12 run function area_manager:on_change/underworld
execute in overworld as @a[x=-288,y=0,z=-3296,dx=639,dy=255,dz=1311,gamemode=!spectator] unless score @s Dimension matches 13 run function area_manager:on_change/table_mountain
execute in overworld as @a[x=-3072,y=0,z=-656,dx=1903,dy=255,dz=1103,gamemode=!spectator] unless score @s Dimension matches 14 run function area_manager:on_change/cloudia
execute in overworld as @a[x=-224,y=0,z=576,dx=527,dy=255,dz=351,gamemode=!spectator] unless score @s Dimension matches 15 run function area_manager:on_change/gullivers_land
execute in overworld as @a[x=768,y=0,z=1008,dx=2063,dy=255,dz=2127,gamemode=!spectator] unless score @s Dimension matches 16 run function area_manager:on_change/tocult_colde
#execute in overworld as @a[x=0,y=0,z=0,dx=1,dy=255,dz=1] unless score @s Dimension matches 20 run function area_manager:on_change/nether_trial
##nether
execute in the_nether as @a[x=-736,y=0,z=-1008,dx=1599,dy=255,dz=1679,gamemode=!spectator] unless score @s Dimension matches 100 run function area_manager:on_change/nether
execute in the_nether as @a[x=-2272,y=0,z=-464,dx=831,dy=1,dz=831,gamemode=!spectator] unless score @s Dimension matches 110 run function area_manager:on_change/nether_dungeon
##end
execute in the_end as @a[distance=0..,gamemode=!spectator] unless score @s Dimension matches 210 run function area_manager:on_change/end
##################################################     エリア移動の壁     ##################################################

###１tick遅れ処理
execute as @e[tag=DelayedTask] at @s run function main:delayed_task

###ログイン時処理
execute as @a[scores={LeaveGame=1..}] at @s run function trigger_manager:leave_game
###スキルインターバル処理
execute as @a[scores={SkillInterval=1..}] at @s run function skill_manager:update_interval
###ここからモード処理を入れる（エンティティ発生処理に割り込めるのでやりやすい）
execute as @a[scores={UseMilkBucket=1..}] at @s run function trigger_manager:milk_bucket
execute as @a[scores={CarrotTick=1..}] at @s run function trigger_manager:carrot_continue
execute as @a[scores={UseSnowball=1..}] at @s run function trigger_manager:snowball
execute as @a[scores={UseBow=1..}] at @s run function trigger_manager:bow
execute as @a[scores={UseCarrotStick=1..}] at @s run function trigger_manager:carrot_on_a_stick
execute as @a[scores={UseArmorStand=1..}] at @s run function trigger_manager:armor_stand
execute as @a[scores={DamageDealt=0..}] at @s run function trigger_manager:damage_dealt
execute as @a[scores={DamageTaken=0..}] at @s run function trigger_manager:damage_taken
execute as @a[scores={SprintOneCm=1..}] at @s run function trigger_manager:sprint
execute as @e[scores={UseSplashPotion=1..}] at @s run function trigger_manager:splash_potion
execute as @e[scores={UseLingerPotion=1..}] at @s run function trigger_manager:lingering_potion
execute as @a[scores={Jump=1..}] at @s run function trigger_manager:jump
execute as @a[scores={Deaths=1..}] at @s run function trigger_manager:death
execute as @a[scores={FoodLevel=1..}] at @s run function trigger_manager:food_preview
execute as @a[scores={SneakTime=1..}] at @s run function trigger_manager:sneak

###スキルエッグ
execute as @a[scores={UseModeEgg=1..}] at @s run function trigger_manager:egg/mode_change
execute as @a[scores={UseSupportRed=1..}] at @s run function trigger_manager:egg/support_red
execute as @a[scores={UseSupportBlue=1..}] at @s run function trigger_manager:egg/support_blue
execute as @a[scores={DroppedMode=1..}] at @s run function trigger_manager:egg/dropped_mode
execute as @a[scores={DroppedRed=1..}] at @s run function trigger_manager:egg/dropped_red
execute as @a[scores={DroppedBlue=1..}] at @s run function trigger_manager:egg/dropped_blue

###スキル発動
execute as @a[scores={ActiveSkill=1..}] at @s run function skill_manager:practice/mode
execute as @a if score @s CarrotTick matches 0 run scoreboard players set @s CarrotContinue 0
###MP不足表示
execute as @a[scores={ActiveCost=1..}] if score @s MP < @s ActiveCost run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
scoreboard players reset @s ActiveCost

###満腹度処理
execute as @a[scores={FoodLevel=1..}] at @s run function trigger_manager:food
##################################################     同tick内に初期化させるエンティティ発生の可能性の壁     ##################################################

###スポナースポーン処理
execute as @e[tag=Spawn] positioned as @s run function enemy_manager:spawn/allocate_dimension

###エンティティ発生時処理
execute as @e[tag=!Initialized] at @s run function entity_manager:initialize_entity

###一時的毎tick処理呼び出し
execute as @e[tag=TickingTask] at @s run function main:ticking_task

###１秒処理
scoreboard players add $Second Count 1
execute if score $Second Count matches 21.. run function main:one_second

###飛翔物スキル処理
execute as @e[tag=Mob,scores={ProjectileSkill=1..}] at @s run function skill_manager:projectile/check
execute as @e[tag=Projectile,scores={ProjectileSkill=1..}] at @s run function skill_manager:projectile/try

### スポナーカート空気時削除
execute as @e[tag=SpawnerHolder] at @s if block ~ ~ ~ minecraft:air align xyz run tag @e[dy=0,tag=Spawner] add Garbage
##################################################     エンティティ全般処理の壁     ##################################################

###パペット移動
execute as @a[tag=WithPuppet] unless score @s ModeSkill matches 71031..71039 at @s run function puppet_manager:puppet_move
###アイアンウィル復帰
execute as @a[scores={IronWill=1..}] at @s run function skill_manager:knight/iron_will/count
execute as @a[tag=IronWill] run function skill_manager:knight/iron_will/load
###隼斬り待機(連舞と共用)
execute as @a[scores={ModeSkill=11011..21039}] unless score @s ModeSkill matches 11020..21030 at @s run function skill_manager:knight/falcon_slash/ready
###斬鉄剣タイミング調整
execute as @a[scores={OdinSlash=0..}] at @s run function skill_manager:knight/odin_slash/tick
###跳躍演出
execute as @a[scores={Choyaku=0..},nbt={OnGround:false,FallDistance:0.0f}] at @s run function skill_manager:ninja/choyaku/direction
###一閃処理
execute as @a[scores={Issen=1..}] at @s run function skill_manager:ninja/issen/tick
###介錯処理
execute as @a[scores={Kaishaku=1..}] at @s run function skill_manager:ninja/kaishaku/wear
###ブラストスパーク継続
execute as @a[scores={BlastSpark=1..}] at @s run function skill_manager:hunter/blast_spark/tick
###ライトニングブロー
execute as @a[scores={LightningBlow=1..}] at @s run function skill_manager:black_mage/lightning_blow/tick
###ロックンロール
execute as @a[scores={ModeSkill=51041..51049}] at @s run function skill_manager:black_mage/rock_n_roll/tick
##################################################     継続系スキルの壁     ##################################################

###エンティティダメージ付与
execute as @e[tag=Mob,scores={Damage=0..}] at @s run function entity_manager:apply_damage
execute as @e[tag=Mob,scores={BlinkTick=1..}] at @s run function skill_manager:enemy/blink/direction
###エンティティ削除処理
##敵討伐時処理
execute as @e[tag=Mob,nbt={AbsorptionAmount:0f}] at @s run function entity_manager:mob_death
##乗り物削除フラグ付与
tag @e[tag=Vehicle,nbt=!{Passengers:[{}]}] add Garbage
tag @e[tag=Vehicle,tag=Anchored,nbt=!{Passengers:[{Tags:[Anchor]}]}] add Garbage
##エンティティ削除
execute as @e[tag=Garbage] run function entity_manager:garbage_collection
##################################################     エンティティダメージ＆削除処理の壁     ##################################################

###バースト減少
scoreboard players remove バースト MP 1
scoreboard players operation バースト MP > $10000 Const
scoreboard players operation バースト MP < $99999 Const

### MP消費
execute as @a run function skill_manager:update_mp

###カスタムHP回復
execute as @a[scores={HealthHealing=-2147483648..}] run function effect_manager:health_healing
##################################################     このtickの戦闘処理を完了させるHP/MP処理の壁     ##################################################

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
###フィールサイズ変更
execute as @a unless score @s SetFillSize matches 0 run function skill_manager:show_skill/summoner/mode/set_fill
###プレイヤーゲーム設定
execute as @a unless score @s ChangeSettings matches 0 run function main:settings/triggered
###TIPS抑制
execute as @a unless score @s TipsSupTrigger matches 0 run function main:tips/suppress
##################################################     スキル表示・変更の壁     ##################################################

###無限チェスト処理
execute if score $InfinityChest Global matches 1.. as @e[tag=InfinityChest] at @s run function item_manager:infinity_chest/check
scoreboard players set $InfinityChest Global 0
execute as @a at @s if entity @e[distance=..7,tag=InfinityChest,limit=1] run scoreboard players set $InfinityChest Global 1

###無限チェスト処理（いろは丸）
execute as @a positioned as @s as @e[tag=inf_chest,distance=..5] positioned as @s run function item_manager:inf_chest/main


###クエスト関係
execute as @a if score @s QuestClick matches 1.. run function quest_manager:main/list_clicked
execute as @a if score @s QuestReceive matches 1.. run function quest_manager:main/receive_decide
execute as @a if score @s QuestReport matches 1.. run function quest_manager:main/done_decide
