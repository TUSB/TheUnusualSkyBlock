#残りLoop > (Radius - MinRadius) なら失敗
execute unless score _ Calc > _ _ store success score @s _ run tp @s 0-0-0-0-1
execute if score _ Calc > _ _ run scoreboard players set _ Calc 0
