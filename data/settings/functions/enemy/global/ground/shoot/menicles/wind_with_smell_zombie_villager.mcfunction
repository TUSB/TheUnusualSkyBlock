#Function
# ゾンビ村人 n通りのセリフ
scoreboard players set _ Calc 12
execute store result score _ _ run function calc:random
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"くせぇー！！ 環境テロやめろや！！"}]}
execute if score _ _ matches 1 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"俺、メニクル好きだけどなー。時と場所がなー。"}]}
execute if score _ _ matches 2 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"ここでごま油大さじ3、ごま適当、塩小さじ1、しょうゆ小さじ1、メニクル適量加えよくかき混ぜましょう。"}]}
execute if score _ _ matches 3 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"イッタイメガー！！"}]}
execute if score _ _ matches 4 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"ぎゃあああああああ！！！"}]}
execute if score _ _ matches 5 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"アァアアァーーーーーーーー！！！"}]}
execute if score _ _ matches 6 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"値はでないが、涙が出るわ。"}]}
execute if score _ _ matches 7 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"催涙ガス散布やめろ。"}]}
execute if score _ _ matches 8 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"げ！ このフローラルな香りは・・・！"}]}
execute if score _ _ matches 9 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"はーカオスカオス。白けたし明日にしようぜ～。"}]}
execute if score _ _ matches 10 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"はぁ～泣けるねぇ。この臭いに。"}]}
execute if score _ _ matches 11 run tellraw @a[distance=..16] {"translate":"%1$s：「%2$s」","with":[{"selector":"@s"},{"translate":"この臭いに乾杯ね。"}]}
