#Function
# 経験値オーブから降りて位置調整
    ride @s dismount
    execute align xyz run tp @s ~0.5 ~ ~0.5 ~ ~
# 一旦500m上空に避難
    execute at @s run tp @s ~ ~500 ~ ~ ~
# 周りを虫食いレンガで埋め尽くす
    fill ~-2 ~-1 ~-1 ~2 ~1 ~1 infested_cracked_stone_bricks replace #settings:conditions/can_replace_colony
    fill ~-1 ~-2 ~-1 ~1 ~2 ~1 infested_cracked_stone_bricks replace #settings:conditions/can_replace_colony
    fill ~-1 ~-1 ~-2 ~1 ~1 ~2 infested_cracked_stone_bricks replace #settings:conditions/can_replace_colony
# 中央を空洞にしてからTPで戻ってくる
    setblock ~ ~ ~ air replace
    execute at @s run tp @s ~ ~-500 ~ ~ ~
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sがどこかに現れた。","color":"white","bold":true,"with":[{"selector":"@s","color":"white"}]}
