### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Friendly,Shoot,Mortar,MortarBulletParticle]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Damage",Mob:{Physical:100,Fire:180},Distance:{Min:0.1d,Max:3d},Explosion:-1},{Name:"Kill"}]}}
