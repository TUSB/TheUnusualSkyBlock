#Function
# ランダム処理
execute store result score _ Random run function calc:random
scoreboard players set _ _ 3
scoreboard players operation _ Random %= _ _
playsound minecraft:block.nether_bricks.fall hostile @a[distance=..32] ~ ~ ~ 2.0 0.5 0.0
playsound minecraft:block.sand.step hostile @a[distance=..32] ~ ~ ~ 0.75 0.7 0
playsound minecraft:block.nylium.step hostile @a[distance=..32] ~ ~ ~ 1.0 0.5 0.0
## 1
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^0.34 ^0.02 ^3.18 ^26654470.0 ^896597888.0 ^-442042752.0 0.00000000045 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^0.55 ^0.02 ^1.58 ^34344980.0 ^893758144.0 ^-447232576.0 0.00000000057 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^3.3 ^0.02 ^0.75 ^196667648.0 ^855531840.0 ^-478943776.0 0.00000000060 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^-3.39 ^0.02 ^-2.51 ^-237441152.0 ^562584768.0 ^-791909184.0 0.00000000051 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^3.47 ^0.02 ^-3.09 ^192555504.0 ^726552064.0 ^-659579008.0 0.00000000064 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^1.47 ^0.02 ^-1.46 ^80197232.0 ^826456320.0 ^-557259648.0 0.00000000065 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^1.64 ^0.02 ^-2.7 ^101129744.0 ^698578112.0 ^-708351104.0 0.00000000058 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^-1.68 ^0.02 ^-1.15 ^-103942920.0 ^782545536.0 ^-613855360.0 0.00000000057 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^0.51 ^0.02 ^4.92 ^69643160.0 ^845772608.0 ^-528978720.0 0.00000000026 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^-0.34 ^0.02 ^3.18 ^-26003174.0 ^901862144.0 ^-431240640.0 0.00000000046 0 force @a[distance=..32]
execute if score _ Random matches 0 at @s run particle item cobbled_deepslate ^-0.0 ^0.02 ^4.76 ^-52.62 ^860719552.0 ^-509079456.0 0.00000000028 0 force @a[distance=..32]
## 2
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^1.51 ^0.02 ^4.72 ^97720464.0 ^959697600.0 ^-263498096.0 0.00000000055 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^-1.56 ^0.02 ^3.52 ^-89362752.0 ^949082048.0 ^-302088480.0 0.00000000062 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^-1.64 ^0.02 ^2.21 ^-116562424.0 ^876246784.0 ^-467551840.0 0.00000000050 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^-5.0 ^0.02 ^1.83 ^-377012768.0 ^763590080.0 ^-524205568.0 0.00000000047 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^1.82 ^0.02 ^-0.8 ^161660096.0 ^502591488.0 ^-849274880.0 0.00000000040 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^-2.09 ^0.02 ^-2.33 ^-138210784.0 ^662379840.0 ^-736308800.0 0.00000000054 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^1.21 ^0.02 ^-1.72 ^59884332.0 ^851990976.0 ^-520120320.0 0.00000000072 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^1.64 ^0.02 ^-2.7 ^105636816.0 ^664348288.0 ^-739920384.0 0.00000000055 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^4.5 ^0.02 ^-3.26 ^268126704.0 ^643661184.0 ^-716804224.0 0.00000000060 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^4.91 ^0.02 ^0.73 ^423703744.0 ^580509824.0 ^-695329792.0 0.00000000041 0 force @a[distance=..32]
execute if score _ Random matches 1 at @s run particle item cobbled_deepslate ^-3.47 ^0.02 ^2.6 ^-402930880.0 ^566488960.0 ^-718844096.0 0.00000000031 0 force @a[distance=..32]
## 3
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^0.55 ^0.02 ^1.58 ^43127956.0 ^826282368.0 ^-561602496.0 0.00000000046 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^4.01 ^0.02 ^3.05 ^351391808.0 ^789989056.0 ^-502435264.0 0.00000000041 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^1.68 ^0.02 ^0.65 ^137162112.0 ^735578624.0 ^-663408384.0 0.00000000044 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^1.9 ^0.02 ^-0.06 ^142448960.0 ^734029248.0 ^-664010176.0 0.00000000047 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^1.47 ^0.02 ^-1.46 ^80502320.0 ^824993088.0 ^-559379712.0 0.00000000065 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^1.0 ^0.02 ^-3.54 ^64071624.0 ^610190144.0 ^-789659968.0 0.00000000055 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^-0.44 ^0.02 ^-4.71 ^-26355934.0 ^587215808.0 ^-809001216.0 0.00000000059 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^0.98 ^0.02 ^-5.15 ^53378072.0 ^645243968.0 ^-762109632.0 0.00000000065 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^-4.01 ^0.02 ^-3.54 ^-278867872.0 ^434408768.0 ^-856458816.0 0.00000000051 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^5.31 ^0.02 ^-1.3 ^316007936.0 ^734902080.0 ^-600048320.0 0.00000000060 0 force @a[distance=..32]
execute if score _ Random matches 2 at @s run particle item cobbled_deepslate ^-2.45 ^0.02 ^4.33 ^-268457696.0 ^830248128.0 ^-488486048.0 0.00000000032 0 force @a[distance=..32]

