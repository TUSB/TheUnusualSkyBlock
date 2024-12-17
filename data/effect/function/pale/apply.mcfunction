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

# 減少させる
scoreboard players add @s PaleLevel 1
function effect:pale/health_down

execute run function makeup:effect/pale/apply

# 一生に一回だけ付与 ロックする
scoreboard players set _ _ -1
scoreboard players operation @s PaleLevel *= _ _
