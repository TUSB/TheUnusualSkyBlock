scoreboard players operation @s Random = @s RndMWC
scoreboard players operation @s RndMWC *= #MWCMultiplier Const
scoreboard players operation @s RndMWC += @s RndMWCCarry
scoreboard players operation @s RndMWCCarry = @s RndMWC
scoreboard players operation @s RndMWC %= #MWCBase Const
scoreboard players operation @s RndMWCCarry /= #MWCBase Const
