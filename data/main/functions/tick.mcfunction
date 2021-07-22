##############################
### 毎ティック処理
##############################

###生き返り後処理
execute as @a[scores={Hunger=0..,Age=1..}] at @s run function player:rise

###ログイン時処理
execute as @a[scores={LeaveGame=1..}] at @s run function player:leave_game

###トリガー
execute as @a[scores={UseSnowball=1..}] at @s run function player:trigger/use/snowball
execute as @a[scores={UseBow=1..}] at @s run function player:trigger/use/bow
execute as @a[scores={UseCrossbow=1..}] at @s run function player:trigger/use/crossbow
execute as @a[scores={UseTrident=1..}] at @s run function player:trigger/use/trident
execute as @a[scores={UseCarrotStick=1..}] at @s run function player:trigger/use/carrot_on_a_stick
execute as @a[scores={SneakTime=1..}] at @s run function player:trigger/sneak
execute as @a[scores={SneakFrequency=1..}] at @s run function player:trigger/sneak_frequency
execute as @a[scores={DamageTaken=0..}] at @s run function player:trigger/damage_taken
execute as @a[scores={Deaths=1..}] at @s run function player:trigger/death

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### スポナーカート空気時削除
execute as @e[tag=SpawnerHolder] at @s if block ~ ~ ~ minecraft:air align xyz run tag @e[dy=0,tag=Spawner] add Garbage

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{id:"tusb_mob:empty"}}]

###１秒処理
scoreboard players add $Second Count 1
execute if score $Second Count matches 20.. run function main:one_second

### スキル
scoreboard players remove @a Interval 1

###Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function entity:enemy/update_health
execute as @e[tag=Mob,scores={Damage=1..}] run function entity:enemy/update_health

###エンティティAI分岐
execute as @e[tag=Mob,tag=HasAI] at @s run function entity:enemy/ai/tick

###エンティティ削除
execute as @e[tag=Garbage] run function entity:garbage_collection

###カスタムHP回復
execute as @a[scores={HealthHealing=-2147483648..}] run function player:health_healing

###プレイヤーゲーム設定
execute as @a unless score @s ChangeSettings matches 0 run function player:game_settings/triggered
###プレイヤースキル設定
execute as @a unless score @s ChangeSkill matches 0 at @s run function skill:trigger/
###潜在能力
execute as @a unless score @s PotentialTrigger matches 0 at @s run function job:potentials/triggered

###ネザースター取得
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star"}]}] at @s run function job:exp/get
