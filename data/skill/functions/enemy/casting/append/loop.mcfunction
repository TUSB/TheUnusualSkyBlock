###先頭の要素のNextAction "@s _"
execute store result score @s _ run data get storage mob_data: Casting[0].NextAction

###追加
###Casting[0].NextActionが"_ _"より大きくてかつ、すでに実行済みでないならそこに追加
execute if score @s _ > _ _ if data storage mob_data: AddingCast{IsAdded:false} run function skill:enemy/casting/append/act



###一巡しても追加されてない場合は最後尾に追加
execute if data storage mob_data: AddingCast{LoopCount:0} if data storage mob_data: AddingCast{IsAdded:false} run function skill:enemy/casting/append/act

###Shift
#scoreboard players add @s Calc 1
execute store result storage mob_data: AddingCast.LoopCount int 0.99999999 run data get storage mob_data: AddingCast.LoopCount 1
execute unless data storage mob_data: AddingCast{LoopCount:0} run function skill:enemy/casting/append/shift

###Loop
execute unless data storage mob_data: AddingCast{LoopCount:0} run function skill:enemy/casting/append/loop