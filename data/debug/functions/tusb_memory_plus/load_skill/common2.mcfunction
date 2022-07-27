#> debug:tusb_memory_plus/load_skill/common2

data modify storage skill: Data.Job set value []

data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"リスト・アイテム",Name:"リスト・アイテム",Level:1,AcquireLevel:{Min:26,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1026"}}',Lore:['{"translate":"アイテムを保存し死亡時に復元する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"自爆キャンセラー",Name:"自爆キャンセラー",Level:1,AcquireLevel:{Min:25,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1025"}}',Lore:['[{"translate":"一定数攻撃を受けると自爆してしまう","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：トントを治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"病気治し",Name:"病気治し",Level:1,AcquireLevel:{Min:24,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1024"}}',Lore:['[{"translate":"回復時、確率で阻害する","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：病気を治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"混乱治し",Name:"混乱治し",Level:1,AcquireLevel:{Min:23,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1023"}}',Lore:['[{"translate":"一定確率で真後ろを向いてしまう","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：混乱を治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"麻痺治し",Name:"麻痺治し",Level:1,AcquireLevel:{Min:22,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1022"}}',Lore:['[{"translate":"確率でスキルが発動できなくなる","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：麻痺を治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"凍結治し",Name:"凍結治し",Level:1,AcquireLevel:{Min:21,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1021"}}',Lore:['[{"translate":"3秒の間完全拘束する","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：凍結を治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"火傷治し",Name:"火傷治し",Level:1,AcquireLevel:{Min:20,Max:100},MP:0,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1020"}}',Lore:['[{"translate":"継続してダメージを与える","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"特殊デバフ：火だるまを治す。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"禁忌・冥界落とし",Name:"禁忌・冥界落とし",Level:1,AcquireLevel:{Min:19,Max:100},MP:0,Interval:80,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1019"}}',Lore:['{"translate":"大量の有害なポーションを前方に向けて放つ。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"解毒",Name:"解毒",Level:1,AcquireLevel:{Min:18,Max:100},MP:0,Interval:0,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1018"}}',Lore:['{"translate":"通常のデバフのみを消す。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"不完全な解毒",Name:"不完全な解毒",Level:1,AcquireLevel:{Min:17,Max:100},MP:0,Interval:0,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1017"}}',Lore:['{"translate":"通常のバフ、デバフを消す。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：友好的なポイゾンアイ",Name:"サモンS友好的なポイゾンアイ",Level:1,AcquireLevel:{Min:16,Max:100},MP:0,Interval:300,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1016"}}',Lore:['{"translate":"友好的でキュートな毒を吐く目玉を召喚する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：トゲフレンド",Name:"サモンSトゲフレンド",Level:1,AcquireLevel:{Min:15,Max:100},MP:0,Interval:1000,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1015"}}',Lore:['{"translate":"蒼白の凛々しいトゲイガーを召喚する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"索引顕界",Name:"索引顕界",Level:1,AcquireLevel:{Min:14,Max:100},MP:0,Interval:0,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1014"}}',Lore:['[{"translate":"刻まれた情報を元に■■■■■に","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"索引した後、物質を顕界させる。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"フラッシュライト",Name:"フラッシュライト",Level:1,AcquireLevel:{Min:13,Max:100},MP:0,Interval:100,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1013"}}',Lore:['[{"translate":"視線の先に光源を設置する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"一定時間操作可、adv無効。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブリザードヴェール",Name:"ブリザードヴェール",Level:1,AcquireLevel:{Min:12,Max:100},MP:0,Interval:50,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1012"}}',Lore:['{"translate":"敵の通過を防ぐ吹雪のカーテンを展開する。","color":"white","italic":false}'],LoreCount:4,Damage:{Ice:5,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"クロスファイアー",Name:"クロスファイアー",Level:1,AcquireLevel:{Min:11,Max:100},MP:0,Interval:20,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1011"}}',Lore:['{"translate":"前方に十字を描く炎弾を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Fire:80,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"フラッシュライト",Name:"フラッシュライト",Level:1,AcquireLevel:{Min:10,Max:100},MP:0,Interval:100,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1010"}}',Lore:['[{"translate":"視線の先に光源を設置する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"一定時間操作可、adv無効。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブリザードヴェール",Name:"ブリザードヴェール",Level:1,AcquireLevel:{Min:9,Max:100},MP:0,Interval:50,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1009"}}',Lore:['{"translate":"敵の通過を防ぐ吹雪のカーテンを展開する。","color":"white","italic":false}'],LoreCount:4,Damage:{Ice:5,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"クロスファイアー",Name:"クロスファイアー",Level:1,AcquireLevel:{Min:8,Max:100},MP:0,Interval:20,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1008"}}',Lore:['{"translate":"前方に十字を描く炎弾を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Fire:80,Hit:1b}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブラストショット",Name:"ブラストショット",Level:1,AcquireLevel:{Min:7,Max:998},MP:0,Interval:60,Trigger:"弓を構えて矢を撃つ",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1007"}}',Lore:['{"translate":"自身には無害な爆発する矢を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Physical:30,Fire:80}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"ブラストショットⅡ",Name:"ブラストショット",Level:2,AcquireLevel:{Min:6,Max:100},MP:0,Interval:60,Trigger:"弓を構えて矢を撃つ",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1006"}}',Lore:['{"translate":"自身には無害な爆発する矢を放つ。","color":"white","italic":false}'],LoreCount:4,Damage:{Physical:60,Fire:110}}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生もの",Name:"生もの",Level:1,AcquireLevel:{Min:5,Max:998},MP:0,Interval:200,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1005"}}',Lore:['{"translate":"食べれないことはない。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅡ",Name:"生もの",Level:2,AcquireLevel:{Min:4,Max:998},MP:0,Interval:150,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1004"}}',Lore:['{"translate":"珍味である。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅢ",Name:"生もの",Level:3,AcquireLevel:{Min:3,Max:998},MP:0,Interval:50,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1003"}}',Lore:['{"translate":"うまい。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"生ものⅣ",Name:"生もの",Level:4,AcquireLevel:{Min:2,Max:100},MP:0,Interval:0,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1002"}}',Lore:['{"translate":"至高の一品。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：ボム",Name:"サモンSボム",Level:1,AcquireLevel:{Min:1,Max:100},MP:0,Interval:0,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1001"}}',Lore:['[{"translate":"よくある爆弾を召喚する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"また召喚地点に数秒間留まると溜めボムに進化する。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"共通",Icon:"C",Skill:"サモンS：迫撃砲",Name:"サモンS迫撃砲",Level:1,AcquireLevel:{Min:0,Max:100},MP:0,Interval:120,Trigger:"手に持って右クリック",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 1000"}}',Lore:['{"translate":"湾曲した曲射弾道を描く砲弾を発射し続ける固定砲台を召喚する。","color":"white","italic":false}'],LoreCount:4}
