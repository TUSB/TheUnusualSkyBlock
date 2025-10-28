#> entity:has_in_ground/is_garbage
#
# 実行エンティティがGarbage状態かどうかを確認する
# if function で指定可能
#

scoreboard players set _ _ 0

# 1 = true, 0 = false
execute if entity @s[tag=Flying] run return run function entity:has_in_ground/cooldown/check/portal_cooldown
execute unless entity @s[tag=Flying] run return run function entity:has_in_ground/cooldown/check/life
