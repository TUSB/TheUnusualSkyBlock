#> entity:has_in_ground/cooldown/set/life

# life
# このfunctionが呼び出されるタイミングが不定のため、CooldownRequiredの判定時に1159を超えていないようにするための対策
execute if score _ _ matches 0 run scoreboard players add _ _ 1
execute store result entity @s life short -1 run scoreboard players remove _ _ 1159

# PortalCooldown用のGameTime更新
# C - (B - x) = A : 再飛行時のPortalCooldown設定式
# x = A + B - C
# 
# x: @s GameTime : 変更する着弾時GameTime
# 
# A: _ _ : 引数のPortalCooldown
# B: # Calc = GameTime : 現在のGameTime
# C: _ Calc = @s PortalCooldown : 停止したときのPortalCooldown
execute store result score # Calc run time query gametime
execute store result score _ Calc run data get entity @s PortalCooldown

scoreboard players operation _ _ += # Calc
scoreboard players operation _ _ -= _ Calc

scoreboard players operation @s GameTime = _ _
