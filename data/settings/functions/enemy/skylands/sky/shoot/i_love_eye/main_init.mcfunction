#Function
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sがどこかに現れた。","color":"white","bold":true,"with":[{"selector":"@s","color":"white"}]}
    execute on vehicle run tag @s add SleepgaImmune
