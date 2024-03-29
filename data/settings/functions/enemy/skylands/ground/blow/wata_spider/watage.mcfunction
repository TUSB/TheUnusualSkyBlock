### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"綿毛","color":"#FFFFFF","bold":true}',DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageStartSound]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageStart]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:4,Current:4},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageDirection]}],Once:2},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageSound]},{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageDirection]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,WatageDebuff]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
