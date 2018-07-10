##############################
### 特殊効果処理
##############################

scoreboard players set $RegistFlag Global 0

### 吐き気
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={nausea=true}}] run effect clear @s minecraft:nausea
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={nausea=true}}]
### 毒
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={poison=true}}] run effect clear @s minecraft:poison
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={poison=true}}]
### 弱体化
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={weakness=true}}] run effect clear @s minecraft:weakness
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={weakness=true}}]
### ウィザー
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={wither=true}}] run effect clear @s minecraft:wither
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={wither=true}}]
### 盲目
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={blindness=true}}] run effect clear @s minecraft:blindness 
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={blindness=true}}]
### 空腹
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={hunger=true}}] run effect clear @s minecraft:hunger
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={hunger=true}}]
### 採掘低下
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={mining_fatigue=true}}] run effect clear @s minecraft:mining_fatigue
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={mining_fatigue=true}}]
### 移動速度低下
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={slowness=true}}] run effect clear @s minecraft:slowness
execute store success score $RegistFlag Global if score $Random Global < @s RegistEffects if entity @s[advancements={effect_manager:bad_effects={slowness=true}}]

### レジストメッセージ
execute unless score @s RegistLock matches 1 if score $RegistFlag Global matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"悪い効果","color":"white"},"を防いだ！"]
execute unless score @s RegistLock matches 1 run scoreboard players add @s RegistEffects 3
scoreboard players set @s RegistLock 1

advancement revoke @s only effect_manager:bad_effects
