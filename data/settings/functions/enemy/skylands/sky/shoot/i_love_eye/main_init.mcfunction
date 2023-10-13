#Function
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sがどこかに現れた。","color":"white","bold":true,"with":[{"selector":"@s","color":"white"}]}
# 下のガストを強化
    execute on vehicle run tag @s add SleepgaImmune
    execute on vehicle run data modify entity @s PortalCooldown set value 7000
