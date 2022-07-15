#ダウジングスポナー
scoreboard players set _ _ 0
scoreboard players set _ Calc 0
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..05] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"","color":"gray"},{"text":">  "},{"text":"近くに強い反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..10] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"-","color":"gray"},{"text":">  "},{"text":"近くに強い反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..15] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"--","color":"gray"},{"text":">  "},{"text":"近くに強い反応がある。"}]
execute if score _ _ matches 1 if score _ Calc matches 0 store success score _ Calc run function makeup:skill/act/common/dowsing_spawner/strong

execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..20] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆","color":"#459fff"},{"text":"---","color":"gray"},{"text":">  "},{"text":"中くらいの反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..25] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆","color":"#459fff"},{"text":"----","color":"gray"},{"text":">  "},{"text":"中くらいの反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..30] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆","color":"#459fff"},{"text":"-----","color":"gray"},{"text":">  "},{"text":"中くらいの反応がある。"}]
execute if score _ _ matches 1 if score _ Calc matches 0 store success score _ Calc run function makeup:skill/act/common/dowsing_spawner/medium

execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..35] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆◆","color":"#459fff"},{"text":"------","color":"gray"},{"text":">  "},{"text":"遠くから弱い反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..40] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆◆","color":"#459fff"},{"text":"-------","color":"gray"},{"text":">  "},{"text":"遠くから弱い反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..45] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆◆","color":"#459fff"},{"text":"--------","color":"gray"},{"text":">  "},{"text":"遠くから弱い反応がある。"}]
execute if score _ _ matches 0 if entity @e[tag=Spawner,distance=..50] store success score _ _ run tellraw @s [{"text":"<"},{"text":"◆","color":"#459fff"},{"text":"---------","color":"gray"},{"text":">  "},{"text":"遠くから弱い反応がある。"}]
execute if score _ _ matches 0 run tellraw @s [{"text":"<"},{"text":"","color":"#459fff"},{"text":"----------","color":"gray"},{"text":">  "},{"text":"周囲にスポナーの反応は無いようだ。"}]
execute if score _ _ matches 1 if score _ Calc matches 0 store success score _ Calc run function makeup:skill/act/common/dowsing_spawner/weak

execute if score _ _ matches 0 run function makeup:skill/act/common/dowsing_spawner/none
