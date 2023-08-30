#> skill:enemy/parabolic_motion/
#
# 実行者のMotionを操作して放物運動をさせます
#
# ※実行者を実行座標に向けて放物運動させます
#   実行座標に着弾するまでの時間(Tick)と重力加速度を設定することができます
#
# ※いずれかのMotionが10以上の場合Minecraftの仕様上動作しません
#
# @input
#   as entity
#   position
#   storage mob_data:
#       Argument.MotionTick: int
#       Argument.MotionGravity: double
# @api

# ストレージ検証
    execute unless data storage mob_data: Argument.MotionTick run tellraw @a [{"text":"ParabolicMotionの着弾時間は必ず設定する必要があります"}]
    execute unless data storage mob_data: Argument.MotionGravity run tellraw @a [{"text":"ParabolicMotionの重力加速度は必ず設定する必要があります"}]

# 本処理に移行
    execute if data storage mob_data: Argument.MotionTick if data storage mob_data: Argument.MotionGravity run function skill:enemy/parabolic_motion/core/

# リセット
    data remove storage mob_data: Argument