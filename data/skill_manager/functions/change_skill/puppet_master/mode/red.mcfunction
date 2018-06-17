##############################
### 絡繰士モードスキル変更リスト表示(ルビー)
##############################

execute if score @s ChangeLevel matches 1..2 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}]
execute if score @s ChangeLevel matches 3..7 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンス","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}]
execute if score @s ChangeLevel matches 8..14 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンス","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロック","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロック","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}]
execute if score @s ChangeLevel matches 15..16 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンス","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロック","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロック","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}]
execute if score @s ChangeLevel matches 17..17 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンス","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロック","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロック","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Pキャッチ","hoverEvent":{"action":"show_text","value":["",{"text":"Pキャッチ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せる。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 18..22 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンス","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Pキャッチ","hoverEvent":{"action":"show_text","value":["",{"text":"Pキャッチ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せる。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 23..27 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Pキャッチ","hoverEvent":{"action":"show_text","value":["",{"text":"Pキャッチ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せる。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 28..32 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Pキャッチ","hoverEvent":{"action":"show_text","value":["",{"text":"Pキャッチ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せる。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 33..34 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリング","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリング","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが作物を植える。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐトライ","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐトライ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、振りかざす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 35..37 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐトライ","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐトライ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、振りかざす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 38..42 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅣ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅣ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐトライ","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐトライ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、振りかざす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 43..47 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅣ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅣ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐトライ","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐトライ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、振りかざす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 48..48 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅤ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅤ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐトライ","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐトライ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、振りかざす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 49..49 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅤ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅤ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐスロー","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐスロー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、投げ飛ばす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}]
execute if score @s ChangeLevel matches 50..100 run tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 999"}}," ",{"text":"メンテナンスⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"メンテナンスⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを回復する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7101"}}," ",{"text":"オーバークロックⅤ","hoverEvent":{"action":"show_text","value":["",{"text":"オーバークロックⅤ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"3","bold":true}],"\n","パペットの行動頻度を引き上げる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7102"}}," ",{"text":"バイオハンドリングⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"バイオハンドリングⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"2","bold":true}],"\n","パペットが農作をする。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7103"}}," ",{"text":"Ｐスロー","hoverEvent":{"action":"show_text","value":["",{"text":"Ｐスロー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","パペットを引き寄せ、投げ飛ばす。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7104"}}," ",{"text":"マルチスレッド","hoverEvent":{"action":"show_text","value":["",{"text":"マルチスレッド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"100","bold":true}],"\n","パペットの行動頻度を引き上げ、\n一度に可能な行動を全て取るようになる。","\n","発動条件: ",{"text":"常時","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7105"}}]
