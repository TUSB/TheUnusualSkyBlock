#> effect:pale/apply
###ペイル(最大HP割合減少)

#> このデバフの注意点
#
# プレイヤーのチャットから直接実行する場合、
# 連続で実行したとき9段階目で、仮死状態になるバグが発生する。
# 3~4秒以上間隔を空けて実行すること。
# また、飲むタイプのポーションでこのデバフを受けた時、
# 9段階目で、仮死状態になるバグが発生する確率が非常に高い。
# なお、コマンドブロックでの直接の呼び出しやスプラッシュポーションからの呼び出しは連続でも大丈夫らしい
#

##現在のHealthと、次段階減少後の最大HPを比べてバグが起きるかどうかチェックする
#現在のHealth
execute store result score @s HP run data get entity @s Health

#現在(減少ナシ時)の最大Health
execute store result score _ HP run attribute @s generic.max_health get 10000
execute store result score _ _ run attribute @s generic.max_health modifier value get 0-10-0-0-0 100
scoreboard players add _ _ 100
scoreboard players operation _ HP /= _ _

#次段階の減少後の最大Health
execute store result score _ _ run attribute @s generic.max_health modifier value get 0-10-0-0-0 100
scoreboard players add _ _ 90
scoreboard players operation _ HP *= _ _
scoreboard players set _ _ 10000
scoreboard players operation _ HP /= _ _

#もし現在HPが次段階の減少後の最大HPより大きくなる場合、バグ回避をする
execute if score @s HP > _ HP unless score _ HP matches 0 run effect give @s instant_health 1 0 true

# 減少させる
scoreboard players add @s PaleLevel 1
function effect:pale/health_down

execute run function makeup:effect/pale/apply

# 一生に一回だけ付与 ロックする
scoreboard players set _ _ -1
scoreboard players operation @s PaleLevel *= _ _
