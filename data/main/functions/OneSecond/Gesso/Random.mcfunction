execute @p ~ ~ ~ /function usb:Random/Root
scoreboard players operation @p Random %= #100 Const
scoreboard players operation @s Random = @p Random
entitydata @s[score_Random_min=0,score_Random=4] {Motion:[0d,-0.4d,0d]}
entitydata @s[score_Random_min=5,score_Random=14] {Motion:[0d,-0.3d,0d]}
entitydata @s[score_Random_min=15,score_Random=29] {Motion:[0d,-0.2d,0d]}
entitydata @s[score_Random_min=30,score_Random=49] {Motion:[0d,-0.1d,0d]}
###entitydata @s[score_Random_min=45,score_Random=54] {Motion:[0d,-0.0d,0d]}
entitydata @s[score_Random_min=50,score_Random=69] {Motion:[0d,0.1d,0d]}
entitydata @s[score_Random_min=70,score_Random=84] {Motion:[0d,0.2d,0d]}
entitydata @s[score_Random_min=85,score_Random=94] {Motion:[0d,0.3d,0d]}
entitydata @s[score_Random_min=95,score_Random=99] {Motion:[0d,0.4d,0d]}
