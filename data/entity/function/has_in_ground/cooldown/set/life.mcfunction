#> entity:has_in_ground/cooldown/set/life

# PortalCooldown用のGameTime更新
# 現時点から設定時間が始まるとすればよい
execute store result score @s GameTime run time query gametime
execute store result entity @s PortalCooldown int 1 run scoreboard players get _ _

# life
# このfunctionが呼び出されるタイミングが不定のため、CooldownRequiredの判定時に1159を超えていないようにするための対策
execute if score _ _ matches 0 run scoreboard players add _ _ 1
execute store result entity @s life short -1 run scoreboard players remove _ _ 1159
