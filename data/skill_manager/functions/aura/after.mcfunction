##############################
### オーラ経過
##############################

execute store result score $PlayerCount Global if entity @a[distance=..32]
execute if score $PlayerCount Global matches 1..2 run scoreboard players remove @s Aura 50
execute if score $PlayerCount Global matches 3..5 run scoreboard players remove @s Aura 100
execute if score $PlayerCount Global matches 6..9 run scoreboard players remove @s Aura 150
execute if score $PlayerCount Global matches 10.. run scoreboard players remove @s Aura 200

###無敵
execute if score @s Job matches 1 run effect give @a[distance=..32] minecraft:resistance 1 127
###スキル忘却
execute if score @s Job matches 2 run tag @e[tag=ForgotSkill] remove ForgotSkill
###クリティカル倍率10倍解除
execute if score @s Job matches 3 run scoreboard players operation @a[distance=..32] CritRate /= $10 Const
###常時キアリク
# effect_manager内で処理
###消費MP0
# practice内で処理
###ペット効果付与
execute if score @s Job matches 6 run function skill_manager:aura/summoner/apply
###スキルレベル上昇
execute if score @s Job matches 7 as @a[distance=..32] run function skill_manager:aura/puppet_master/remove

execute as 0-0-FF-0-FF at @s run function calc_manager:set/random_rotation
execute if score @s Job matches 1 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/knight
execute if score @s Job matches 2 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/ninja
execute if score @s Job matches 3 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/hunter
execute if score @s Job matches 4 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/white_mage
execute if score @s Job matches 5 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/black_mage
execute if score @s Job matches 6 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/summoner
execute if score @s Job matches 7 rotated as 0-0-FF-0-FF run function skill_manager:aura/decorate/puppet_master

scoreboard players reset @s[scores={Aura=..0}] Aura
