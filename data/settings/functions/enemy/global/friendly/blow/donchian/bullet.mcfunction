### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:firework_rocket",CustomName:'{"translate":"ドンチャン花火","color":"#FFFF00"}',Life:0,LifeTime:40,Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{CustomModelData:126,Explosion:{Type:0b,Colors:[I;16774912]},Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16777215]}]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Condition:[{Name:"RandomChance",Chance:0.2d}],Name:"Function",Tags:[Global,Friendly,Blow,Donchian,TrackEnemyExcludTrap]}]}