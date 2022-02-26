
## 真空斬りリエイム

# タイマー
scoreboard players remove @s _ 1

# 0以下ならリエイム実行
execute if score @s _ matches ..0 run function skill:act/knight/aerial_slash/re_aim

# 演出
function makeup:skill/act/knight/aerial_slash/fly
