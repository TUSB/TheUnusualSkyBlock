#> debug:tusb_memory_plus/load_skill/ninja

data modify storage skill: Data.Job set value []
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"サヨナラ",Name:"サヨナラ",Level:1,AcquireLevel:{Min:50,Max:100},MP:100,Interval:0,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 250"}}',Lore:['[{"translate":"死亡時、爆発四散する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"MPが足りなくても発動する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"MPが足りていた場合、レイズ効果を得る。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"レイズ：リスポーン時に死亡した場所に復活する。","color":"white","italic":false}'],LoreCount:7}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"風切",Name:"風切",Level:1,AcquireLevel:{Min:39,Max:100},MP:30,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 239"}}',Lore:['{"translate":"風を纏い、空中を浮遊する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"介錯",Name:"介錯",Level:1,AcquireLevel:{Min:38,Max:100},MP:80,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 238"}}',Lore:['[{"translate":"自身が敵を倒した際に、敵が爆発四散するようになる。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"+スニーク: %1$s","color":"white","italic":false,"with":[{"translate":"周囲のプレイヤーが敵を倒した際に、敵が爆発四散するようになる。"}]}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"呼魂",Name:"呼魂",Level:1,AcquireLevel:{Min:35,Max:100},MP:30,Interval:20,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 235"}}',Lore:['{"translate":"周囲のアイテムを引き寄せる。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"居縮：壱",Name:"居縮",Level:1,AcquireLevel:{Min:28,Max:39},MP:15,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 228"}}',Lore:['{"translate":"命中した敵を畏れさせ、動きを止める。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"居縮：弐",Name:"居縮",Level:2,AcquireLevel:{Min:40,Max:100},MP:15,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 240"}}',Lore:['{"translate":"命中した敵を畏れさせ、動きを止める。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"夜駆：壱",Name:"夜駆",Level:1,AcquireLevel:{Min:23,Max:42},MP:40,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 223"}}',Lore:['[{"translate":"自身を強化する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"夜が深まるほど効果が上がる。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"+スニーク: %1$s","color":"white","italic":false,"with":[{"translate":"周囲のプレイヤーを強化する。"}]},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"夜が深まるほど効果が上がる。","color":"white","italic":false}'],LoreCount:7}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"夜駆：弐",Name:"夜駆",Level:2,AcquireLevel:{Min:43,Max:100},MP:40,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 243"}}',Lore:['[{"translate":"自身を強化する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"夜が深まるほど効果が上がる。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"+スニーク: %1$s","color":"white","italic":false,"with":[{"translate":"周囲のプレイヤーを強化する。"}]},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"夜が深まるほど効果が上がる。","color":"white","italic":false}'],LoreCount:7}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"兵糧丸",Name:"兵糧丸",Level:1,AcquireLevel:{Min:20,Max:100},MP:10,Interval:10,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 220"}}',Lore:['{"translate":"自身の状態異常と満腹度を回復する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"黙想：壱",Name:"黙想",Level:1,AcquireLevel:{Min:17,Max:36},MP:20,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 217"}}',Lore:['[{"translate":"自身の体力を徐々に回復する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"ある程度移動すると効果が切れる。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"黙想：弐",Name:"黙想",Level:2,AcquireLevel:{Min:37,Max:100},MP:20,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 237"}}',Lore:['[{"translate":"自身の体力を徐々に回復する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"ある程度移動すると効果が切れる。","color":"white","italic":false}'],LoreCount:5}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"火遁",Name:"火遁",Level:1,AcquireLevel:{Min:15,Max:100},MP:20,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 215"}}',Lore:['{"translate":"自身に火炎耐性を与える。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"一閃：壱",Name:"一閃",Level:1,AcquireLevel:{Min:13,Max:29},MP:50,Interval:20,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 213"}}',Lore:['{"translate":"周囲にかまいたちを発生させながら突進する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"一閃：弐",Name:"一閃",Level:2,AcquireLevel:{Min:30,Max:48},MP:50,Interval:20,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 230"}}',Lore:['{"translate":"周囲にかまいたちを発生させながら突進する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"一閃：参",Name:"一閃",Level:3,AcquireLevel:{Min:49,Max:100},MP:50,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 249"}}',Lore:['{"translate":"周囲にかまいたちを発生させながら突進する。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"水遁",Name:"水遁",Level:1,AcquireLevel:{Min:10,Max:100},MP:20,Interval:40,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 210"}}',Lore:['{"translate":"自身に水中耐性を与える。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"連舞：壱",Name:"連舞",Level:1,AcquireLevel:{Min:8,Max:25},MP:3,Interval:0,Trigger:"近接攻撃する",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 208"}}',Lore:['{"translate":"近接攻撃するほど攻撃力が上がる。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"連舞：弐",Name:"連舞",Level:2,AcquireLevel:{Min:26,Max:45},MP:3,Interval:0,Trigger:"近接攻撃する",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 226"}}',Lore:['{"translate":"近接攻撃するほど攻撃力が上がる。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"連舞：参",Name:"連舞",Level:3,AcquireLevel:{Min:46,Max:100},MP:3,Interval:0,Trigger:"近接攻撃する",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 246"}}',Lore:['{"translate":"近接攻撃するほど攻撃力が上がる。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"跳躍：壱",Name:"跳躍",Level:1,AcquireLevel:{Min:5,Max:24},MP:3,Interval:5,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 205"}}',Lore:['[{"translate":"スニーク時、跳躍力が上昇する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"また、跳躍時に衝撃波が発生し、","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"周囲にダメージを与える。","color":"white","italic":false}'],LoreCount:6}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"跳躍：弐",Name:"跳躍",Level:2,AcquireLevel:{Min:25,Max:44},MP:3,Interval:5,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 225"}}',Lore:['[{"translate":"スニーク時、跳躍力が上昇する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"また、跳躍時に衝撃波が発生し、","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"周囲にダメージを与える。","color":"white","italic":false}'],LoreCount:6}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"跳躍：参",Name:"跳躍",Level:3,AcquireLevel:{Min:45,Max:100},MP:3,Interval:5,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 245"}}',Lore:['[{"translate":"スニーク時、跳躍力が上昇する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"また、跳躍時に衝撃波が発生し、","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"周囲にダメージを与える。","color":"white","italic":false}'],LoreCount:6}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"手裏剣：壱",Name:"手裏剣",Level:1,AcquireLevel:{Min:3,Max:17},MP:2,Interval:4,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 203"}}',Lore:['{"translate":"命中した敵にダメージ。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"手裏剣：弐",Name:"手裏剣",Level:2,AcquireLevel:{Min:18,Max:32},MP:2,Interval:4,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 218"}}',Lore:['{"translate":"命中した敵にダメージ。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"手裏剣：参",Name:"手裏剣",Level:3,AcquireLevel:{Min:33,Max:47},MP:2,Interval:4,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 233"}}',Lore:['{"translate":"命中した敵にダメージ。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"手裏剣：肆",Name:"手裏剣",Level:4,AcquireLevel:{Min:48,Max:100},MP:2,Interval:4,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 248"}}',Lore:['{"translate":"命中した敵にダメージ。","color":"white","italic":false}'],LoreCount:4}
data modify storage skill: Data.Job append value {Job:"忍者",Icon:"N",Skill:"アイサツ",Name:"アイサツ",Level:1,AcquireLevel:{Min:1,Max:100},MP:10,Interval:20,Trigger:"人参棒を使用",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/data modify storage skill: TUSBM.Skill set value 201"}}',Lore:['[{"translate":"周囲の敵にアイサツついでに大まかな索敵を行う。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','{"translate":"アイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","color":"white","italic":false}'],LoreCount:5}
