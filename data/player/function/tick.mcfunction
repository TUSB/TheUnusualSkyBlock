#> player:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function player:one_second

### トリガー
execute if entity @s[scores={UseBow=1..}] run function player:trigger/use/bow
execute if entity @s[scores={UseCrossbow=1..}] run function player:trigger/use/crossbow
execute if entity @s[scores={UseTrident=1..}] run function player:trigger/use/trident
execute if entity @s[scores={UseCarrotStick=1..}] run function player:trigger/use/carrot_on_a_stick
# execute if entity @s[scores={UseFungusStick=1..}] run function player:trigger/use/warped_fungus_on_a_stick
