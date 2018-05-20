##############################
### からくり召喚
##############################

###ダーク
#summon minecraft:stray ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"bab7cdc2-f6ba-47f6-b899-f23add2e7c7f",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1MjY2OTUzNzI2ODksInByb2ZpbGVJZCI6ImJhYjdjZGMyZjZiYTQ3ZjZiODk5ZjIzYWRkMmU3YzdmIiwicHJvZmlsZU5hbWUiOiJBaUFrYWlzaGkiLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBjODdjMDJkMzcyYzQ5ODY2Nzg3OThjMjgxNWU1ZTc2ODE4YWQyOTg2YWQ0NzQ5ZGI5Yjc5YjgwNmZjMjkzNCJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],NoAI:true,Invulnerable:true,PersistenceRequired:true,Tags:[Initialized,Puppet,Initializing]}
###ライト
#summon minecraft:stray ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"bab7cdc2-f6ba-47f6-b899-f23add2e7c7f",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1MjY2OTQ0NTk4NjgsInByb2ZpbGVJZCI6ImJhYjdjZGMyZjZiYTQ3ZjZiODk5ZjIzYWRkMmU3YzdmIiwicHJvZmlsZU5hbWUiOiJBaUFrYWlzaGkiLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWM3MzRlMmRjNjU0MzEyN2YxYjQ2MGQ3OTA3YzQzMjI0MmI4MGNhY2UxMzZlMjAxMzRlMWJmMTFkYjhhMGQ0MiJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],NoAI:true,Invulnerable:true,PersistenceRequired:true,Tags:[Initialized,Puppet,Initializing]}
###グレイ
summon minecraft:stray ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"76ea1141-8278-464b-bde7-f56d6eddfb4f",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1MjY3MTQ3MzIzNTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xZmIwODlmZjRhZWE1MWNmMjFmNGUyZTQ5MmMyNDdkMWUxNmIyZjQ4MzAwNDhhZWUyM2QxZTQ1YWMyYWY0MTE1In19fQ=="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],NoAI:true,Invulnerable:true,PersistenceRequired:true,Tags:[Initialized,Puppet,Initializing],Passengers:[{id:"minecraft:snowball",Passengers:[{id:"minecraft:snowball",Passengers:[{id:"minecraft:chest_minecart"}]}]}]}

scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
tag @e[distance=0,tag=Initializing,limit=1] remove Initializing