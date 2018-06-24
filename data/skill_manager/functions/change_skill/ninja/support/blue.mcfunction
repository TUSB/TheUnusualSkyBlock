##############################
### 忍者サポートスキル変更リスト表示(サファイア)
##############################

execute if score @s ChangeLevel matches 1..9 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}]
execute if score @s ChangeLevel matches 10..14 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}]
execute if score @s ChangeLevel matches 15..16 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}]
execute if score @s ChangeLevel matches 17..19 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：壱","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}]
execute if score @s ChangeLevel matches 20..22 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：壱","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}]
execute if score @s ChangeLevel matches 23..34 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：壱","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：壱","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}]
execute if score @s ChangeLevel matches 35..36 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：壱","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：壱","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}," ",{"text":"呼魂","hoverEvent":{"action":"show_text","value":["",{"text":"呼魂","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","周囲のアイテムを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2207"}}]
execute if score @s ChangeLevel matches 37..37 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：弐","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：弐","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：壱","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}," ",{"text":"呼魂","hoverEvent":{"action":"show_text","value":["",{"text":"呼魂","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","周囲のアイテムを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2207"}}]
execute if score @s ChangeLevel matches 38..38 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：弐","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：弐","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：壱","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}," ",{"text":"呼魂","hoverEvent":{"action":"show_text","value":["",{"text":"呼魂","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","周囲のアイテムを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2207"}}," ",{"text":"介錯","hoverEvent":{"action":"show_text","value":["",{"text":"介錯","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","自身が敵を倒した際に、敵が爆発四散するようになる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"25","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーが敵を倒した際に、敵が爆発四散するようになる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2208"}}]
execute if score @s ChangeLevel matches 39..42 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：弐","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：弐","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：壱","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：壱","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}," ",{"text":"呼魂","hoverEvent":{"action":"show_text","value":["",{"text":"呼魂","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","周囲のアイテムを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2207"}}," ",{"text":"介錯","hoverEvent":{"action":"show_text","value":["",{"text":"介錯","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","自身が敵を倒した際に、敵が爆発四散するようになる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"25","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーが敵を倒した際に、敵が爆発四散するようになる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2208"}}," ",{"text":"風切","hoverEvent":{"action":"show_text","value":["",{"text":"風切","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","風を纏い、空中を浮遊する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2209"}}]
execute if score @s ChangeLevel matches 43..100 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"アイサツ","hoverEvent":{"action":"show_text","value":["",{"text":"アイサツ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","周囲の敵にアイサツする。\nアイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ",{"text":"∞","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2201"}}," ",{"text":"水遁","hoverEvent":{"action":"show_text","value":["",{"text":"水遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に水中耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2202"}}," ",{"text":"火遁","hoverEvent":{"action":"show_text","value":["",{"text":"火遁","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身に火炎耐性を与える。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"180","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"2","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2203"}}," ",{"text":"黙想：弐","hoverEvent":{"action":"show_text","value":["",{"text":"黙想：弐","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身の体力を徐々に回復する。\n移動すると効果が切れる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2204"}}," ",{"text":"兵糧丸","hoverEvent":{"action":"show_text","value":["",{"text":"兵糧丸","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","自身の状態異常と満腹度を回復する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2205"}}," ",{"text":"夜駆：弐","hoverEvent":{"action":"show_text","value":["",{"text":"夜駆：弐","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","自身を強化する。\n夜が深まるほど効果が上がる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"90","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"8","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーを強化する。\n夜が深まるほど効果が上がる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2206"}}," ",{"text":"呼魂","hoverEvent":{"action":"show_text","value":["",{"text":"呼魂","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","周囲のアイテムを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2207"}}," ",{"text":"介錯","hoverEvent":{"action":"show_text","value":["",{"text":"介錯","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","自身が敵を倒した際に、敵が爆発四散するようになる。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"25","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーが敵を倒した際に、敵が爆発四散するようになる。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2208"}}," ",{"text":"風切","hoverEvent":{"action":"show_text","value":["",{"text":"風切","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","風を纏い、空中を浮遊する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2209"}}]
