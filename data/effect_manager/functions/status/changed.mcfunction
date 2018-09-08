##############################
### ステータス変化検知
##############################

# execute store result score $Duration Global run data get entity @s ActiveEffects[0].Duration
# tellraw @s {"score":{"objective":"Global","name":"$Duration"}}

# say =====START=====

# scoreboard players set $BoostState Global 11


# execute store result score $HealthModifier Global run data get entity @s Attributes[0].Modifiers[0].Amount 100
# execute if score $HealthModifier Global matches 0 run function effect_manager:status/modify_max
# execute if score $HealthModifier Global matches 0 run effect clear @s[nbt={ActiveEffects:[{Id:21b}]}] minecraft:health_boost
# execute if score $HealthModifier Global matches 0 run effect give @s[nbt=!{ActiveEffects:[{Id:21b}]}] minecraft:health_boost 1000000 10 true

# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run say active
# execute if entity @s[nbt={Attributes:[{Modifiers:[{}]}]}] run say applied
# # execute if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run advancement grant @s only effect_manager:health_boost boosted
# execute if entity @s[advancements={effect_manager:health_boost={tested=true}}] run say tested
# execute if entity @s[advancements={effect_manager:health_boost={boosted=true}}] run say boosted
# execute if entity @s[advancements={effect_manager:health_boost={default=true}}] run say default

# execute if entity @s[advancements={effect_manager:health_boost={default=true,tested=true}}] run say aaa

# execute if entity @s[advancements={effect_manager:health_boost={boosted=true}}] run scoreboard players set $Boosted Global 1

# execute unless score $Boosted Global matches 1.. if entity @s[advancements={effect_manager:health_boost={default=true}}] run effect give @s minecraft:health_boost 100 19 true
# execute unless score $Boosted Global matches 1.. if entity @s[advancements={effect_manager:health_boost={default=true}}] run say modified??

# execute if entity @s[advancements={effect_manager:health_boost={default=true}}] run scoreboard players set $Boosted Global 0



# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say b : boosted default
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=true}}] run say b : default boosted
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say b : default default
# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={default=true}}] run function effect_manager:status/modify_max
# execute if entity @s[advancements={effect_manager:health_boost={default=true}}] run effect give @p minecraft:absorption 5 4

# execute if entity @s[advancements={effect_manager:health_boost={boosted=false}}] run function effect_manager:status/modify_max

# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]}f,advancements={effect_manager:health_boost={boosted=false}}] run scoreboard players set $BoostState Global 00
# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run scoreboard players set $BoostState Global 10


# effect give @s[advancements={effect_manager:health_boost={tested=true}}] minecraft:health_boost 1000000 49 true

# scoreboard players set $Flag Global 0
# execute if score $HealthModifier Global matches 0 if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run scoreboard players set $Flag Global 1
# execute if score $HealthModifier Global matches 0 if entity @s[nbt=!{ActiveEffects:[{Id:21b}]}] run say safe effected
# execute if score $HealthModifier Global matches 0 if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run effect give @s minecraft:instant_health 1 0 true
# execute if score $HealthModifier Global matches 0 if entity @s[nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s minecraft:health_boost 100 19 true
# execute if score $HealthModifier Global matches 0 if entity @s[nbt={ActiveEffects:[{Id:21b}]}] run effect give @s minecraft:instant_health 1 0 true
# execute if score $HealthModifier Global matches 0 if entity @s[nbt=!{ActiveEffects:[{Id:21b}]}] run effect give @s minecraft:health_boost 100 19 true

# execute if score $Flag Global matches 1 run say aaaaa
# execute if score $Flag Global matches 1 run effect give @s minecraft:health_boost 1 100 true
# execute if score $Flag Global matches 1 run effect clear @s minecraft:health_boost

# advancement revoke @s only effect_manager:health_boost
# say ====REVOKED====

# execute if score $Flag Global matches 1 run advancement grant @s only effect_manager:health_boost



# effect give @s minecraft:health_boost 1 0 true


# scoreboard players set $Success Global 0

# execute if score $BoostState Global matches 00 run say 最大体力を付与しました。
# execute if score $BoostState Global matches 00 run effect give @s minecraft:health_boost 100 49


# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=true}}] run say a : boosted boosted
# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say a : boosted default
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=true}}] run say a : default boosted
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say a : default default

# # execute if score $BoostState Global matches 00 run function effect_manager:status/modify_max
# # execute if score $BoostState Global matches 10 run effect give @s minecraft:invisibility 1 0 true

# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=true}}] run say aa : boosted boosted
# execute if entity @s[nbt={ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say aa : boosted default
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=true}}] run say aa : default boosted
# execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]},advancements={effect_manager:health_boost={boosted=false}}] run say aa : default default



# execute if entity @s[nbt=!{ActiveEffects:[{Id:14b}]}] run effect give @s minecraft:invisibility 1 0 true


#execute if entity @s[nbt=!{ActiveEffects:[{Id:21b}]}] run function effect_manager:status/modify_max


#execute if score $Boosted Global matches 0 if entity @s[advancements={effect_manager:health_boost={boosted=false}}] run function effect_manager:status/modify_max

# say ======END======
