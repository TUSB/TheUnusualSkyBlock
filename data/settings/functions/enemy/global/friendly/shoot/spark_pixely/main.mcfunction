### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,TickingRequired,AnalyseLog,"BeforeEvolution","Pixely","Unmoved"],Silent:1b,NoAI:1b,Size:0,ActiveEffects:[{Id:12,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:0b,Duration:-1,ShowParticles:0b}],CustomName:'{"translate":"フレンド・スパークピクセリー","color":"#FFFF00","bold":true}',PortalCooldown:1000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 100d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s電気代を浮かせようと常に酷使されています。","with":[{"translate":"【能力：射的・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:60},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d},Anchor:"Eyes"},{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,SparkPixely,SlashMain],Level:30}],[{Tags:[Global,Friendly,Shoot,SparkPixely,SlashMarker],Level:30}]]}],MP:5},{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{}]}]}]}
