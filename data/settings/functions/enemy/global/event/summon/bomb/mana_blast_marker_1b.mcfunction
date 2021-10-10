### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[HasAI,CooldownRequired,CallOnTime],NoGravity:true,Marker:false,Small:true,Invisible:true,PortalCooldown:242}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Passenger:{Type:"down",Check:false,Call:[{Execute:"All",Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,ManaBlast1B],Level:1}]]},{Name:"Kill"}]}}
