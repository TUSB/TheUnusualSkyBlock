### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ファイアークロウ","color":"#FF0000","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:151,Explosion:{Type:0,Colors:[I;16758371]}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Ground,Bullet,FireCrow,Direction]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"RandomChance",Chance:0.25d}],Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Global,Ground,Bullet,FireCrow,Effect]},{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Damage",Player:{Effectiveness:100,DeathCause:'[{"translate":"%1$sは下級魔法%2$sによって焼き尽くされてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:2.5d}}]}]}]}
