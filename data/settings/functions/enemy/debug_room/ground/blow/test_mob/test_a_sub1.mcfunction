### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'"スキルを撃ってくるAEC"',Tags:[DelayedData,HasAI,CooldownRequired],PortalCooldown:160}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"minecraft:dust 3 3 0 1",Duration:999,Radius:0.05f}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{}]}
