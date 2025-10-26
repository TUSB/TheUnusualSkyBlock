#> entity:has_in_ground/cooldown/check/
#
# function entity:has_in_ground/cooldown/check/ {PortalCooldown:100}
#   PortalCooldownにチェックする値を指定する
#

$scoreboard players set _ _ $(PortalCooldown)

# 1 = true, 0 = false
execute if entity @s[tag=Flying] run return run function entity:has_in_ground/cooldown/check/portal_cooldown
execute unless entity @s[tag=Flying] run return run function entity:has_in_ground/cooldown/check/life
