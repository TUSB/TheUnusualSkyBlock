##############################
### クレリックナレッジ発動
##############################

###クレリックナレッジ設定
execute if score _ Level matches 1 run effect give @a[distance=..10] minecraft:luck 60 4
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:luck 60 9
execute if score _ Level matches 3 run effect give @a[distance=..10] minecraft:luck 60 14
scoreboard players set _ _ 60
scoreboard players operation @a[distance=..10] ClericKnowledge > _ _
#演出
function makeup:skill/act/white_mage/cleric_knowledge/act0
