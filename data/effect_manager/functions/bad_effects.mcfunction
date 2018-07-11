##############################
### 特殊効果処理
##############################

scoreboard players set $RegistFlag Global 0

### 吐き気
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={nausea=true}}] run effect clear @s minecraft:nausea
### 毒
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={poison=true}}] run effect clear @s minecraft:poison
### 弱体化
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={weakness=true}}] run effect clear @s minecraft:weakness
### ウィザー
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={wither=true}}] run effect clear @s minecraft:wither
### 盲目
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={blindness=true}}] run effect clear @s minecraft:blindness 
### 空腹
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={hunger=true}}] run effect clear @s minecraft:hunger
### 採掘低下
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={mining_fatigue=true}}] run effect clear @s minecraft:mining_fatigue
### 移動速度低下
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={slowness=true}}] run effect clear @s minecraft:slowness

### レジストメッセージ
execute unless score @s RegistLock matches 1 if score $RegistFlag Global matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"悪い効果","color":"white"},"を防いだ！"]
execute unless score @s RegistLock matches 1 if score $RegistFlag Global matches ..0 run scoreboard players add @s RegistEffects 3
scoreboard players set @s RegistLock 1

advancement revoke @s only effect_manager:bad_effects
