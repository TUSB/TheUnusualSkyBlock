##############################
### パペット行動実行
##############################

###行動したフラグを立てる
scoreboard players set $Action PuppetScore 1
###攻撃行動
execute if entity @s[name=CloseAttack] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/close_attack
execute if entity @s[name=CloseRangeAttack] at @e[tag=TargetPuppet,limit=1] at @e[distance=..3,tag=Mob,sort=nearest,limit=1] run function puppet_manager:skill/close_range_attack
execute if entity @s[name=LongAttack] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/long_attack
execute if entity @s[name=LongRangeAttack] at @e[tag=TargetPuppet,limit=1] at @e[distance=..17,tag=Mob,sort=nearest,limit=1] run function puppet_manager:skill/long_range_attack
execute if entity @s[name=EffectAttack] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/effect_attack
###支援行動
execute if entity @s[name=Defense] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/defense
execute if entity @s[name=HealthCure] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/health_cure
execute if entity @s[name=EffectCure] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/effect_cure
execute if entity @s[name=MagicCure] at @e[tag=TargetPuppet,limit=1] run function puppet_manager:skill/magic_cure
