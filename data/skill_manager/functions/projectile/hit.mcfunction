##############################
### 飛翔物ヒット時処理
##############################

###スノゴ雪玉
execute if score @s ProjectileSkill matches 100000 run function skill_manager:snowman/snowball/hit

### ぽむぽむ花火
execute if score @s ProjectileSkill matches 99997 run function skill_manager:summoner/pompom/direct

### セイクリッドピラー
execute if score @s ProjectileSkill matches 99996 run function skill_manager:white_mage/sacred_pillar/direct
