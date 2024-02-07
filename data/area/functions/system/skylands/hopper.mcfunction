
scoreboard players set _ Calc 5

execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 if block 182 36 -694 hopper run tp @s[x=178,y=38,z=-698,dx=11,dy=40,dz=11] 181 31 -695

execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 if block 182 36 -703 hopper run tp @s[x=178,y=38,z=-710,dx=11,dy=40,dz=11] 181 31 -702

execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 if block 173 36 -703 hopper run tp @s[x=166,y=38,z=-710,dx=11,dy=40,dz=11] 174 31 -702

execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 if block 173 36 -694 hopper run tp @s[x=166,y=38,z=-698,dx=11,dy=40,dz=11] 174 31 -695
