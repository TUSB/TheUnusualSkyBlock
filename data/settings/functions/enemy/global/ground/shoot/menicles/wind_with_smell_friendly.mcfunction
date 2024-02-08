#Function
# 味方Mob n通りのセリフ
scoreboard players set _ Calc 12
execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"くっさ！ メニクルくっさ！ くさくさくさくー！！"}]}
execute if score _ _ matches 1 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"もう耐えられません！ 実家に帰らせて頂きます！"}]}
execute if score _ _ matches 2 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"うっわ、メニクルじゃん！ 帰るわ。"}]}
execute if score _ _ matches 3 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"うっきょ～～！ メニクル～～！"}]}
execute if score _ _ matches 4 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"メニクル相手なんてしてられるかー！ じゃあなー！"}]}
execute if score _ _ matches 5 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"ぎゃああ！ メニクル！ やだー！！"}]}
execute if score _ _ matches 6 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"ぐぁあああああ！！ やめてくれー！"}]}
execute if score _ _ matches 7 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"げぇえ！ 今日は厄日だわ！"}]}
execute if score _ _ matches 8 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"コラァ～～！ なにやってるんだー！？"}]}
execute if score _ _ matches 9 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"これじゃ、俺…ここを守りたくなくなっちまうよ…。"}]}
execute if score _ _ matches 10 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"あぁ！ メニクル！ 臭すぎるだろ！ 反省しろ！"}]}
execute if score _ _ matches 11 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"嫌いだわ～。 この臭い～～。僕達お友達じゃなかったんだね。"}]}
