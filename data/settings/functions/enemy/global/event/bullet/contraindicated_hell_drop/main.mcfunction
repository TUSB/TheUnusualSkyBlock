### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,ContraindicatedHellDrop,PotionBullet],Level:1}]],Count:8},{Name:"Kill"}]}
#Function
playsound entity.splash_potion.throw hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
