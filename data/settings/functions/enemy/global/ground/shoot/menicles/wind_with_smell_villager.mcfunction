#Function
# 村人 n通りのセリフ
scoreboard players set _ Calc 12
execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"あ～あ～あ、今日は店仕舞いだよ、お客さん。メニクルの風が来たからね。"}]}
execute if score _ _ matches 1 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"何の臭いだこれ！ メニクル！"}]}
execute if score _ _ matches 2 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"メニメニメニクル～～。 メニメニメニクル～～。"}]}
execute if score _ _ matches 3 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"はーぁー・・・ないわー・・・かえろ。"}]}
execute if score _ _ matches 4 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"鼻が、ハナがおかしくなる！ ぬぎゃあああー！"}]}
execute if score _ _ matches 5 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"地獄を思い出しますねぇー。フフフ・・・・。くっさっ！"}]}
execute if score _ _ matches 6 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"くさぁーーーーーー！！ とにかく臭い！！ メニクルだろこれ！！"}]}
execute if score _ _ matches 7 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"うわぁああああああーー！！ メニクルだぁあああああああ！！ くせぇえええええ！！！"}]}
execute if score _ _ matches 8 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"ごふぅ！ 耐えれません！ 逃げさせていただきます！！"}]}
execute if score _ _ matches 9 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"おはなもげちゃぅうううう！"}]}
execute if score _ _ matches 10 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"なにやってんだ！ おまえええええ！！"}]}
execute if score _ _ matches 11 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"【規制】【規制】【規制】～～～！！"}]}
