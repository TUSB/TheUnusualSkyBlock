### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Invulnerable:1b,PortalCooldown:200,Tags:[Mob,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"DelayAction",Tags:[AttackEffect,LightningField]},{Name:"MergeNBT",NBT:{PortalCooldown:40}},{Name:"ChangeAI",Passenger:[{}]}]},TurnCount:2,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:2,Current:2},Call:[{Name:"Damage",Player:{Distance:{Max:5d}}}]}]}]}
