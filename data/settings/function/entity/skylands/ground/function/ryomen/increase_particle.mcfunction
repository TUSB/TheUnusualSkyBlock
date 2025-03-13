#Function
# パーティクル
    particle dust_color_transition{from_color:[0.2,0.05,0.35],to_color:[3.0,0.1,0.0],scale:0.2} ~ ~ ~ 0.5 0 0.5 1 10 force @a[distance=..32,tag=ShowParticles]
    particle witch ~ ~ ~ 0.5 0 0.5 1 4 force @a[distance=..32,tag=ShowParticles]
# プレイヤーには悪影響
    effect give @a[predicate=entity:player,distance=..1.5] hunger 6 5 true
    effect give @a[predicate=entity:player,distance=..1.5] slowness 6 2 true
    effect give @a[predicate=entity:player,distance=..1.5] blindness 6 5 true
