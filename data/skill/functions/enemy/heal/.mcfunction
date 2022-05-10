###Heal
### _ _ 回復最大範囲 (1mごと、最大32m,デフォルトで8m,100倍で取得)
### _ Calc ヒール量(魔法攻撃力 * 倍率)
### @s _ 倍率(10000倍で取得,デフォルトで1.0倍)
### @s Calc 定数(10000)
scoreboard players set _ _ 800
scoreboard players set _ Calc 0
scoreboard players set @s _ 10000
scoreboard players set @s Calc 10000

###ステータス取得
scoreboard players operation _ Calc = @s SpecialAttack
execute if data storage mob_data: Call.Multiplier store result score @s _ run data get storage mob_data: Call.Multiplier 10000
execute if data storage mob_data: Call.Range store result score _ _ run data get storage mob_data: Call.Range 100

###範囲調整
execute if score _ _ matches 3201.. run scoreboard players set _ _ 3200
execute if score _ _ matches ..-1 run scoreboard players set _ _ 0

###ヒール量計算
scoreboard players operation _ Calc *= @s _
scoreboard players operation _ Calc /= @s Calc


###対象探索
execute as @e[tag=Enemy,distance=..32] run function skill:enemy/heal/search



###演出
function makeup:skill/enemy/heal/