##############################
### 飛翔物ヒット時処理
##############################

### スノゴ雪玉
execute if score @s ProjectileSkill matches 100000 run function skill_manager:snowman/snowball/hit

### ぽむぽむ花火
execute if score @s ProjectileSkill matches 99997 run function skill_manager:summoner/pompom/direct

### セイクリッドピラー
execute if score @s ProjectileSkill matches 99996 run function skill_manager:white_mage/sacred_pillar/direct

### 真空斬り
execute if score @s ProjectileSkill matches 99995 run function skill_manager:knight/aerial_slash/hit

### ステークスファイア
execute if score @s ProjectileSkill matches 99991 run function skill_manager:hunter/stakes_fire/hit
