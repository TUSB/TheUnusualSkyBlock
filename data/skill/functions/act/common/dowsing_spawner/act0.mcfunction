#ダウジングスポナー

scoreboard players set _ _ 5001
execute store result score _ _ positioned as @e[tag=Spawner,distance=..50,limit=1,sort=nearest] run function calc:geometry/distance/

execute if score _ _ matches 0000..0250 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"","color":"gray"},{"text":">  "},{"translate":"すぐ側にスポナーの反応がある。"}]
execute if score _ _ matches 0251..0500 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆◆+","color":"#459fff"},{"text":"","color":"gray"},{"text":">  "},{"translate":"近くに強い反応がある。"}]
execute if score _ _ matches 0501..0750 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"-","color":"gray"},{"text":">  "},{"translate":"近くに強い反応がある。"}]
execute if score _ _ matches 0751..1000 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆+","color":"#459fff"},{"text":"-","color":"gray"},{"text":">  "},{"translate":"近くに強い反応がある。"}]
execute if score _ _ matches 1001..1250 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆◆","color":"#459fff"},{"text":"--","color":"gray"},{"text":">  "},{"translate":"近くに強い反応がある。"}]
execute if score _ _ matches 1251..1500 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆+","color":"#459fff"},{"text":"--","color":"gray"},{"text":">  "},{"translate":"近くに強い反応がある。"}]
execute if score _ _ matches 1501..1750 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆◆","color":"#459fff"},{"text":"---","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 1751..2000 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆+","color":"#459fff"},{"text":"---","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 2001..2250 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆◆","color":"#459fff"},{"text":"----","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 2251..2500 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆+","color":"#459fff"},{"text":"----","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 2501..2750 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆◆","color":"#459fff"},{"text":"-----","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 2751..3000 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆+","color":"#459fff"},{"text":"-----","color":"gray"},{"text":">  "},{"translate":"中くらいの反応がある。"}]
execute if score _ _ matches 3001..3250 run tellraw @s [{"text":"<"},{"text":"◆◆◆◆","color":"#459fff"},{"text":"------","color":"gray"},{"text":">  "},{"translate":"近くに強+反応が-る。"}]
execute if score _ _ matches 3251..3500 run tellraw @s [{"text":"<"},{"text":"◆◆◆+","color":"#459fff"},{"text":"------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 3501..3750 run tellraw @s [{"text":"<"},{"text":"◆◆◆","color":"#459fff"},{"text":"-------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 3751..4000 run tellraw @s [{"text":"<"},{"text":"◆◆+","color":"#459fff"},{"text":"-------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 4001..4250 run tellraw @s [{"text":"<"},{"text":"◆◆","color":"#459fff"},{"text":"--------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 4251..4500 run tellraw @s [{"text":"<"},{"text":"◆+","color":"#459fff"},{"text":"--------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 4501..4750 run tellraw @s [{"text":"<"},{"text":"◆-","color":"#459fff"},{"text":"---------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 4751..5000 run tellraw @s [{"text":"<"},{"text":"+","color":"#459fff"},{"text":"---------","color":"gray"},{"text":">  "},{"translate":"遠くから弱い反応がある。"}]
execute if score _ _ matches 5001.. run tellraw @s [{"text":"<"},{"text":"","color":"#459fff"},{"text":"----------","color":"gray"},{"text":">  "},{"translate":"周囲にスポナーの反応は無いようだ。"}]

execute if score _ _ matches 0000..1500 run function makeup:skill/act/common/dowsing_spawner/strong
execute if score _ _ matches 1501..3000 run function makeup:skill/act/common/dowsing_spawner/medium
execute if score _ _ matches 3001..5000 run function makeup:skill/act/common/dowsing_spawner/weak
execute if score _ _ matches 5001.. run function makeup:skill/act/common/dowsing_spawner/none
