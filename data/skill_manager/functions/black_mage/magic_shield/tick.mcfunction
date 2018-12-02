##############################
### マジックシールド処理
##############################

scoreboard players remove @s[scores={MagicShield=..999}] MagicShield 1
#効果切れ
execute if entity @s[scores={MagicShield=..0}] run function skill_manager:black_mage/magic_shield/deactivate
#耐性付与
effect give @s[scores={MagicShield=1000..}] minecraft:resistance 2 4 false
#ダメージを受けるとカウントダウン開始
execute if entity @s[scores={MagicShield=1000..},nbt={HurtTime:10s}] run function skill_manager:black_mage/magic_shield/activate

###---演出---Start
execute if entity @s[scores={MagicShield=..999}] run particle minecraft:dust 1 0 100000000 1 ~ ~0.2 ~ 1 0.2 1 0 10 force @a[tag=ShowParticles]
execute if entity @s[scores={MagicShield=..999}] run particle minecraft:enchant ~ ~ ~ 1 1 1 1 20 force @a[tag=ShowParticles]
###---演出---End
