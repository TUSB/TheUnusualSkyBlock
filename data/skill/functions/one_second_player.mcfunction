### 1秒処理
###スキル
#忍者
scoreboard players reset @s[scores={Choyaku=0..},nbt=!{ActiveEffects:[{Id:8}]}] Choyaku
execute if entity @s[scores={Katon=1..}] run function skill:act/ninja/katon/tick
execute if entity @s[scores={Mokuso=1..}] run function skill:act/ninja/mokuso/tick
execute if entity @s[scores={Suiton=1..}] run function skill:act/ninja/suiton/tick
#狩人
execute if entity @s[scores={PiercingAim=1..}] run function skill:act/hunter/piercing_aim/tick
#共通
execute if entity @s[scores={SkyWalk=1..}] run function skill:act/common/sky_walk/tick
