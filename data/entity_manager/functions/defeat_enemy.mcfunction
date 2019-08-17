##############################
### 敵討伐時処理
##############################

###バーストスコア設定
scoreboard players add バースト MP 5000
execute if score バースト MP matches 100000.. run team modify Burst color gold

# ###回復スコア設定
# scoreboard players remove $Healing Count 1

# ###討伐ボーナス回復
# execute if score $Healing Count matches ..0 run function effect_manager:bonus_healing

### スキル持ち
execute if entity @s[tag=SkillOnDeath,tag=!ForgotSkill] at @s run function skill_manager:enemy/skill/on_death

### 介錯サヨナラ処理
execute if entity @s[tag=Garbage] if entity @a[distance=..10,scores={Kaishaku=1..},limit=1] run function skill_manager:ninja/kaishaku/explode
