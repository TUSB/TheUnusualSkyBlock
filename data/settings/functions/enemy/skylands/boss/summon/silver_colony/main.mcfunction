### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"シルバーコロニー","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',NoAI:1b,AttachFace:0b,Color:7b,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnTick,CooldownRequired,AnalyseLog,"Boss","Colony","ColonyBlocked","SleepgaImmune","Unmoved"],PortalCooldown:7000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:20s}]}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s巨大なシルバーフィッシュの巣くつ。大量のシルバーフィッシュが溢れ出てくる。","with":[{"translate":"【能力：コール・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,Init1]}],Death:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,Death]}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,Timeout]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,Tick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:50,Max:100,Current:50},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,Erosion0]}]}]}]}
