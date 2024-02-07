
### ライトニングブロー発動

## 各レベルの最低ためダメージ量
### 60 -> 140 -> 420 -> 1000

# 各レベルにおける最大ためダメージ量
execute if score _ Level matches 1 run scoreboard players set _ LightningBlow 6000
execute if score _ Level matches 2 run scoreboard players set _ LightningBlow 9500
execute if score _ Level matches 3 run scoreboard players set _ LightningBlow 12500
execute if score _ Level matches 4 run scoreboard players set _ LightningBlow 16000
scoreboard players operation _ LightningBlow -= @s LightningBlow

# 実際のためダメージ量へ修正
scoreboard players set _ _ 40
scoreboard players operation _ LightningBlow /= _ _

# ためダメージ量加算
scoreboard players operation @s LightningBlow += _ LightningBlow

function makeup:skill/act/black_mage/lightning_blow/act0
