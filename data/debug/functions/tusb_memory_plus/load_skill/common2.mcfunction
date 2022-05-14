#> debug:tusb_memory_plus/load_skill/common2

data modify storage skill: Data.Job set value []

data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"フラッシュライト",Name:"フラッシュライト",Level:1,AcquireLevel:{Min:10,Max:100},MP:0,Interval:100,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1010"}}',Lore:['[{"translate":"視線の先に光源を設置する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"一定時間操作可、adv無効。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブリザードヴェール",Name:"ブリザードヴェール",Level:1,AcquireLevel:{Min:9,Max:100},MP:0,Interval:50,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1009"}}',Lore:['{"translate":"敵の通過を防ぐ吹雪のカーテンを展開する。","color":"white","italic":false}'],LoreCount:4,Damage:{Ice:5,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"クロスファイアー",Name:"クロスファイアー",Level:1,AcquireLevel:{Min:8,Max:100},MP:0,Interval:20,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1008"}}',Lore:['{"translate":"前方に十字を描く炎弾を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Fire:80,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブラストショット",Name:"ブラストショット",Level:1,AcquireLevel:{Min:7,Max:998},MP:0,Interval:60,Trigger:"弓を構えて矢を撃つ",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1007"}}',Lore:['{"translate":"自身には無害な爆発する矢を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Physical:30,Fire:80}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブラストショットⅡ",Name:"ブラストショット",Level:2,AcquireLevel:{Min:6,Max:100},MP:0,Interval:60,Trigger:"弓を構えて矢を撃つ",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1006"}}',Lore:['{"translate":"自身には無害な爆発する矢を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Physical:60,Fire:110}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生もの",Name:"生もの",Level:1,AcquireLevel:{Min:5,Max:998},MP:0,Interval:200,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1005"}}',Lore:['{"translate":"食べれないことはない。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅡ",Name:"生もの",Level:2,AcquireLevel:{Min:4,Max:998},MP:0,Interval:150,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1004"}}',Lore:['{"translate":"珍味である。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅢ",Name:"生もの",Level:3,AcquireLevel:{Min:3,Max:998},MP:0,Interval:50,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1003"}}',Lore:['{"translate":"うまい。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅣ",Name:"生もの",Level:4,AcquireLevel:{Min:2,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1002"}}',Lore:['{"translate":"至高の一品。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：ボム",Name:"サモンSボム",Level:1,AcquireLevel:{Min:1,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1001"}}',Lore:['[{"translate":"よくある爆弾を召喚する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"また召喚地点に数秒間留まると溜めボムに進化する。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：迫撃砲",Name:"サモンS迫撃砲",Level:1,AcquireLevel:{Min:0,Max:100},MP:0,Interval:120,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1000"}}',Lore:['{"translate":"湾曲した曲射弾道を描く砲弾を発射し続ける固定砲台を召喚する。","color":"white","italic":false}'],LoreCount:4}
