
### ライトニングブロー発動

## 各レベルの最低ためダメージ量
### 60 -> 140 -> 420 -> 1000

# 最大ためダメージ量
scoreboard players set _ LightningBlow 20000
scoreboard players operation _ LightningBlow -= @s LightningBlow

# 各レベルごとのためダメージ係数
execute if score _ Level matches 1 run scoreboard players set _ _ 3
execute if score _ Level matches 2 run scoreboard players set _ _ 7
execute if score _ Level matches 3 run scoreboard players set _ _ 21
execute if score _ Level matches 4 run scoreboard players set _ _ 50
scoreboard players operation _ LightningBlow *= _ _

# 実際のためダメージ量へ修正
scoreboard players set _ _ 1000
scoreboard players operation _ LightningBlow /= _ _

# ためダメージ量加算
scoreboard players operation @s LightningBlow += _ LightningBlow

function makeup:skill/act/black_mage/lightning_blow/act0
