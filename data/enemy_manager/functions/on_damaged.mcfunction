##############################
### モブがダメージを受けた時の共通処理
##############################

###ジンスピリット ダメージカウント
tag @e[tag=GinSpirit,distance=..8] add DetectDamage

### HurtTimeをリセット
scoreboard players set @s DecrementTimer 10

execute store result score $Y Global run data get entity @s Pos[1] 1000
execute if score $Y Global matches ..0 run kill @s

### 特殊ダメージでない場合は自然ダメージ更新
execute as @s[nbt=!{ActiveEffects:[{Id:7b,Amplifier:127b}]}] run function enemy_manager:on_natural_damage

### 最近ダメージをリセット
scoreboard players set @s RecentMaxDamage 0

### 対モブダメージ
execute if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run function skill_manager:enemy/self_damage/apply

### スキルダメージがまだ残っていた場合
execute if score @s Damage matches 0.. run function entity_manager:damage/process_carry

### あとはスキル時と同じ
function enemy_manager:on_skill_damaged
