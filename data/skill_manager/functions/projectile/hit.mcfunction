##############################
### 飛翔物ヒット時処理
##############################

### スノゴ雪玉
execute if score @s ProjectileSkill matches 100000 run function skill_manager:snow_golem/snowball/hit

### 手裏剣
execute if score @s ProjectileSkill matches 21011..21019 run function skill_manager:ninja/shuriken/hit

### ぽむぽむ花火
execute if score @s ProjectileSkill matches 61081..61089 run function skill_manager:summoner/pompom/direct

### セイクリッドピラー
execute if score @s ProjectileSkill matches 51041..51049 run function skill_manager:white_mage/sacred_pillar/direct

### 真空斬り
execute if score @s ProjectileSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/hit

### ステークスファイア
execute if score @s ProjectileSkill matches 31011..31019 run function skill_manager:hunter/stakes_fire/hit

### ウィークペイント
execute if score @s ProjectileSkill matches 81011..81019 run function skill_manager:common/weakness_paint/hit

### ライブラ
execute if score @s ProjectileSkill matches 81021..81029 run function skill_manager:common/libra/hit
