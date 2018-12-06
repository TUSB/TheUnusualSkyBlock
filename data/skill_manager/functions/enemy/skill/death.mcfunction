##############################
### 敵死亡時スキル
##############################

### 蘇生
execute if entity @s[tag=Revival] run function skill_manager:enemy/revival/death

### ヒール
execute if entity @s[tag=HealOnDeath] run function skill_manager:enemy/heal/death

### ヘイスト
execute if entity @s[tag=HasteOnDeath] run function skill_manager:enemy/haste/death

### 爆発
execute if entity @s[tag=ExplodeOnDeath] run function skill_manager:enemy/explode/death

### コール
execute if entity @s[tag=CallOnDeath] run function skill_manager:enemy/call/death
