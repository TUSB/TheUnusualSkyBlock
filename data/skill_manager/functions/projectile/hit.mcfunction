##############################
### 飛翔物ヒット時処理
##############################

### スノゴ雪玉
execute if score @s ProjectileSkill matches 100000 run function skill_manager:snow_golem/snowball/hit

### 真空斬り
execute if score @s ProjectileSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/hit

### 手裏剣
execute if score @s ProjectileSkill matches 21011..21019 run function skill_manager:ninja/shuriken/hit

### ステークスファイア
execute if score @s ProjectileSkill matches 31011..31019 run function skill_manager:hunter/stakes_fire/hit

### チェインアロー
execute if score @s ProjectileSkill matches 31021..31029 run function skill_manager:hunter/chain_arrow/hit

### ディア
execute if score @s ProjectileSkill matches 41021..41029 run function skill_manager:white_mage/dia/hit

### ぽむぽむ花火
execute if score @s ProjectileSkill matches 61081..61089 run function skill_manager:summoner/pompom/direct

### ウィークペイント
execute if score @s ProjectileSkill matches 81011..81019 run function skill_manager:common/weakness_paint/hit

### ライブラ
execute if score @s ProjectileSkill matches 81021..81029 run function skill_manager:common/libra/hit
