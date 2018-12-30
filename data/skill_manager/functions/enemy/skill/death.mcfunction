##############################
### 敵死亡時スキル
##############################

### ヒール
execute if entity @s[tag=HealOnDeath,tag=!Revival] run function skill_manager:enemy/heal/death

### ヘイスト
execute if entity @s[tag=HasteOnDeath,tag=!Revival] run function skill_manager:enemy/haste/death

### 爆発
execute if entity @s[tag=ExplodeOnDeath,tag=!Revival] run function skill_manager:enemy/explode/death

### コール
execute if entity @s[tag=CallOnDeath,tag=!Revival] run function skill_manager:enemy/call/death

##########最後##########
### 蘇生
execute if entity @s[tag=Revival] run function skill_manager:enemy/revival/death
