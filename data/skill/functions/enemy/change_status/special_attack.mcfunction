#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.SpecialAttack.Add
execute store result score @s _ run data get storage mob_data: Call.SpecialAttack.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力"
execute if data storage mob_data: Call.SpecialAttack.Set store result score _ Calc run data get storage mob_data: Call.SpecialAttack.Set
scoreboard players operation _ Calc += @s Calc
#Limit
execute if data storage mob_data: Call.SpecialAttack.Limit store result score @s _ run data get storage mob_data: Call.SpecialAttack.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.SpecialAttack.Limit run scoreboard players operation _ Calc < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.SpecialAttack.Limit run scoreboard players operation _ Calc > @s _

execute store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" int 1 run scoreboard players get _ Calc
function enemy:spawn/apply_status/status/special_attack
