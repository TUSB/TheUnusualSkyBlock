
### ふかふかケージ経過


tag @e[distance=..5,tag=!Cage,tag=Enemy,tag=!Unmoved] add Caught
tag @e[distance=..5,tag=Caught] add DelayedTask

###向きランダム化
function calc:set/random_rotation

###ぐるっと
function makeup:skill/act/summoner/fukafuka/cage_loop
