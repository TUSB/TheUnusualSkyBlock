#Function
# ダメージを受けると感知範囲が増大する
    particle angry_villager ~ ~1.6 ~ 0.15 0.15 0.15 1 10 force @a[distance=..32,tag=ShowParticles]
    attribute @s generic.follow_range base set 128
    attribute @s generic.attack_speed base set 3.0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.5 0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.55 0 
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.6 0
# AIを変化させる
    data modify storage mob_data: AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:160,Current:120},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[-180f,-30f],DirectionRange:[360f,30f],Speed:1d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,GrimoireZombie,FireBullet],Level:30}]]}]}]}]}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
    data modify storage mob_data: Tags append value "HasAI"
