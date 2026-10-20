##############################
### メテオストライク
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:28,Stop:[Mob,Block],Align:0b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 run summon armor_stand ~ ~ ~ {Tags:[NativeTask,Skill,MeteorStrike,CooldownRequired],Rotation:[0f,-90f],PortalCooldown:150,Invisible:1b,Invulnerable:1b}
execute at 0-0-0-0-0 as @e[tag=MeteorStrike,distance=..0.01,limit=1] run function skill:act/black_mage/meteor_strike/act1
