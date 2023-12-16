#> skill:burst/condition
#
# バーストを発動させた本人がいるかどうかを確認する
#
# @within function main:tick

# バーストを発動させた本人がいる場合
    execute as @a[scores={Burst=1..}] at @s run function skill:burst/tick
# バーストを発動させた本人が見つからない場合
    execute unless entity @a[scores={Burst=1..}] run function skill:burst/force_finish