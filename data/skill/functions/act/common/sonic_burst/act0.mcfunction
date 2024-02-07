#> skill:act/common/sonic_burst/act0
#
# ソニックバースト
#
# @within function skill:practice/act/common

# ダメージ保存
    data modify storage skill: Damage set from storage skill: Data.Common[{Name:"ソニックバースト",Level:1}].Damage

# ループ処理開始
    scoreboard players set _ Calc 12
    execute anchored eyes positioned ^ ^ ^0.5 run function skill:act/common/sonic_burst/loop

# ダメージ適用
    execute as @e[tag=Enemy,tag=Landing,distance=..32] run function skill:damage/apply/
    tag @e[tag=Enemy,tag=Landing,distance=..32] remove Landing

# 音
    function makeup:skill/act/common/sonic_burst/sound