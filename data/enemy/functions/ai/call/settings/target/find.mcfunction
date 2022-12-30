#残りLoop > (Radius - MinRadius) なら失敗
execute unless score # Calc >= _ _ store success score @s _ run tp @s 0-0-0-0-0
execute if score # Calc >= _ _ run scoreboard players set # Calc 0
