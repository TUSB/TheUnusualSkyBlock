#Function
## パーティクル表示
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmKQCykCcARgMxwDsAtAAweMBMbV9Khza1aAVgBsbHtQAcARjEsUAQwmyeYAgDsVAWwTJAYYoACeVrAwVGfQGck4FAHtC2iEl4EUcN3AwOwADcVbEJDcAAPJA4CKGiAX3iCG1I0QntEeS5s7IJbCGt3RBiwOGxsNBhbQyySjCcCiEMStFsAUXLK6raAR0IQ7CgAZStvckQAMxDqxIBdIA_3
# 円 1
particle squid_ink ~ ~0.1 ~ ~0 ~ ~-100000000 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~19509032.20161 ~ ~-98078528.04032 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~38268343.23651 ~ ~-92387953.25113 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~55557023.30196 ~ ~-83146961.23025 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~70710678.11865 ~ ~-70710678.11865 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~83146961.23025 ~ ~-55557023.30196 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~92387953.25113 ~ ~-38268343.23651 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~98078528.04032 ~ ~-19509032.20161 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~100000000 ~ ~0 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~98078528.04032 ~ ~19509032.20161 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~92387953.25113 ~ ~38268343.23651 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~83146961.23025 ~ ~55557023.30196 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~70710678.11865 ~ ~70710678.11865 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~55557023.30196 ~ ~83146961.23025 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~38268343.23651 ~ ~92387953.25113 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~19509032.20161 ~ ~98078528.04032 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~0 ~ ~100000000 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-19509032.20161 ~ ~98078528.04032 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-38268343.23651 ~ ~92387953.25113 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-55557023.30196 ~ ~83146961.23025 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-70710678.11865 ~ ~70710678.11865 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-83146961.23025 ~ ~55557023.30196 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-92387953.25113 ~ ~38268343.23651 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-98078528.04032 ~ ~19509032.20161 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-100000000 ~ ~0 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-98078528.04032 ~ ~-19509032.20161 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-92387953.25113 ~ ~-38268343.23651 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-83146961.23025 ~ ~-55557023.30196 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-70710678.11865 ~ ~-70710678.11865 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-55557023.30196 ~ ~-83146961.23025 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-38268343.23651 ~ ~-92387953.25113 0.000000015 0 force @a[distance=..64]
particle squid_ink ~ ~0.1 ~ ~-19509032.20161 ~ ~-98078528.04032 0.000000015 0 force @a[distance=..64]
particle minecraft:witch ~ ~0.1 ~ 0.25 0 0.25 1 75 force @a[distance=..64]
## 音
playsound minecraft:block.beacon.deactivate hostile @a[distance=..32] ~ ~ ~ 2 0.75
playsound minecraft:block.conduit.deactivate hostile @a[distance=..32] ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2
## 鈍足付与
execute as @a[distance=..12,gamemode=!creative,gamemode=!spectator] run tag @s add NowTarget
effect clear @a[tag=NowTarget] speed
effect clear @a[tag=NowTarget] jump_boost
effect give @a[tag=NowTarget] minecraft:jump_boost 6 128 true
effect give @a[tag=NowTarget] minecraft:slowness 6 7 true
effect give @a[tag=NowTarget] minecraft:slow_falling 6 0 true
tag @a[tag=NowTarget] remove NowTarget
