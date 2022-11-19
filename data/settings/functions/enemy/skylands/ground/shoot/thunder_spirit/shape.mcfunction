### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,NoGravity:1b,PortalCooldown:20,DeathLootTable:"empty",Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[18f,0f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Teleport"}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Direction:[0f,90f],Speed:1.2d},{Name:"Direction",Speed:1.5d}],Name:"Function",Tags:[Skylands,Ground,Shoot,ThunderSpirit,ShapeParticle]}],Once:20}]}]}
