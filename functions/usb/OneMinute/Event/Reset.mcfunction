execute @a[c=1] ~ ~ ~ /function usb:Random/Root
scoreboard players operation #EventTimer Global = @a[c=1] Random
scoreboard players operation #EventTimer Global %= #30 Const
scoreboard players operation #EventTimer Global += #30 Const
