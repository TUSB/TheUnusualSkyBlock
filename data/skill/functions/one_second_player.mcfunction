### 1秒処理
###スキル
#忍者
scoreboard players reset @s[scores={Choyaku=0..},nbt=!{active_effects:[{id:"minecraft:jump_boost"}]}] Choyaku
execute if entity @s[scores={Katon=1..}] run function skill:act/ninja/katon/tick
execute if entity @s[scores={Mokuso=1..}] run function skill:act/ninja/mokuso/tick
execute if entity @s[scores={Suiton=1..}] run function skill:act/ninja/suiton/tick
#狩人
execute if entity @s[scores={PiercingAim=1..}] run function skill:act/hunter/piercing_aim/tick
#共通
execute if entity @s[scores={SkyWalk=1..}] run function skill:act/common/sky_walk/tick
execute if entity @s[scores={SuspiciousPowderTime=1..}] run function skill:act/common/suspicious_powder/one_second
execute if entity @s[scores={BurnDebaria=1..}] run function skill:act/common/burn_debaria/one_second
execute if entity @s[scores={FreezeDebaria=1..}] run function skill:act/common/freeze_debaria/one_second
execute if entity @s[scores={ParalysisDebaria=1..}] run function skill:act/common/paralysis_debaria/one_second
execute if entity @s[scores={ConfusionDebaria=1..}] run function skill:act/common/confusion_debaria/one_second
execute if entity @s[scores={DiseaseDebaria=1..}] run function skill:act/common/disease_debaria/one_second
execute if entity @s[scores={DoomDebaria=1..}] run function skill:act/common/super_debaria/one_second
