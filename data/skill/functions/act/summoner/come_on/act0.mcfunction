##############################
### ヘイカモン
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:5,Stop:[Block],Align:1b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/
#フレンドリーTP
execute if score _ Level matches 1 positioned as 0-0-0-0-0 run tp @e[distance=..10,team=Friendly,type=!minecraft:player] ~ ~ ~
execute if score _ Level matches 2 positioned as 0-0-0-0-0 run tp @e[distance=..20,team=Friendly,type=!minecraft:player] ~ ~ ~
execute if score _ Level matches 3 positioned as 0-0-0-0-0 run tp @e[distance=..30,team=Friendly,type=!minecraft:player] ~ ~ ~
#プレイヤーTP
execute if score @s SneakTime matches 1.. if score _ Level matches 1 as @a[distance=0.01..10,gamemode=!creative,gamemode=!spectator] positioned as 0-0-0-0-0 run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score _ Level matches 2 as @a[distance=0.01..20,gamemode=!creative,gamemode=!spectator] positioned as 0-0-0-0-0 run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score _ Level matches 3 as @a[distance=0.01..30,gamemode=!creative,gamemode=!spectator] positioned as 0-0-0-0-0 run tp @s ~ ~ ~
#演出
execute positioned as 0-0-0-0-0 run function makeup:skill/act/summoner/come_on/act1
