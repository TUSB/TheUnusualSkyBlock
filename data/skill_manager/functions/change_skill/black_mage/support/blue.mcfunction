##############################
### 黒魔導士サポートスキル変更リスト表示(サファイア)
##############################

execute if score @s ChangeLevel matches 1..2 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}]
execute if score @s ChangeLevel matches 3..7 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}]
execute if score @s ChangeLevel matches 8..12 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}]
execute if score @s ChangeLevel matches 13..17 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}]
execute if score @s ChangeLevel matches 18..19 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}]
execute if score @s ChangeLevel matches 20..24 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}]
execute if score @s ChangeLevel matches 25..27 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}]
execute if score @s ChangeLevel matches 28..32 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}]
execute if score @s ChangeLevel matches 33..37 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}," ",{"text":"ウィンドウォール","hoverEvent":{"action":"show_text","value":["",{"text":"ウィンドウォール","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","周囲の飛翔物を妨げる風を生み出す。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"30","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーに、周囲の飛翔物を妨げる風を生み出す。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5208"}}]
execute if score @s ChangeLevel matches 38..38 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}," ",{"text":"ウィンドウォール","hoverEvent":{"action":"show_text","value":["",{"text":"ウィンドウォール","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","周囲の飛翔物を妨げる風を生み出す。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"30","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーに、周囲の飛翔物を妨げる風を生み出す。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5208"}}," ",{"text":"ルーラ","hoverEvent":{"action":"show_text","value":["",{"text":"ルーラ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"90","bold":true}],"\n","範囲内のプレイヤーをショップ島にテレポートする。\n上空が遮られていると失敗する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5209"}}]
execute if score @s ChangeLevel matches 39..39 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}," ",{"text":"ウィンドウォール","hoverEvent":{"action":"show_text","value":["",{"text":"ウィンドウォール","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","周囲の飛翔物を妨げる風を生み出す。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"30","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーに、周囲の飛翔物を妨げる風を生み出す。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5208"}}," ",{"text":"ルーラ","hoverEvent":{"action":"show_text","value":["",{"text":"ルーラ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"90","bold":true}],"\n","範囲内のプレイヤーをショップ島にテレポートする。\n上空が遮られていると失敗する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5209"}}," ",{"text":"ラナルータ","hoverEvent":{"action":"show_text","value":["",{"text":"ラナルータ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"100","bold":true}],"\n","昼夜を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5210"}}]
execute if score @s ChangeLevel matches 40..42 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"25","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}," ",{"text":"ウィンドウォール","hoverEvent":{"action":"show_text","value":["",{"text":"ウィンドウォール","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","周囲の飛翔物を妨げる風を生み出す。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"30","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーに、周囲の飛翔物を妨げる風を生み出す。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5208"}}," ",{"text":"ルーラ","hoverEvent":{"action":"show_text","value":["",{"text":"ルーラ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"90","bold":true}],"\n","範囲内のプレイヤーをショップ島にテレポートする。\n上空が遮られていると失敗する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5209"}}," ",{"text":"ラナルータ","hoverEvent":{"action":"show_text","value":["",{"text":"ラナルータ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"100","bold":true}],"\n","昼夜を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5210"}}]
execute if score @s ChangeLevel matches 43..100 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"スティッキーアイス","hoverEvent":{"action":"show_text","value":["",{"text":"スティッキーアイス","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","足元に粘着性のある氷を生み出す。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5201"}}," ",{"text":"キャンドル","hoverEvent":{"action":"show_text","value":["",{"text":"キャンドル","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","スポナーから敵を湧きにくくする。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5202"}}," ",{"text":"ラナリオン","hoverEvent":{"action":"show_text","value":["",{"text":"ラナリオン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","天候を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5203"}}," ",{"text":"グロウ","hoverEvent":{"action":"show_text","value":["",{"text":"グロウ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","周囲の作物を急成長させる。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5204"}}," ",{"text":"マナリフレッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"マナリフレッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","ＭＰ回復量を倍増する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"25","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーのＭＰ回復量を倍増する。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5205"}}," ",{"text":"マジックシールド","hoverEvent":{"action":"show_text","value":["",{"text":"マジックシールド","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","次に受けたダメージを無効化する。","\n","効果範囲: ","なし","\n","効果時間: ",{"text":"600","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5206"}}," ",{"text":"ダークスワンプⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ダークスワンプⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"60","bold":true}],"\n","暗黒の沼を生み出し、近づく者を引きずり込む。\n沼が与えたダメージを自身のＭＰに変換する。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"10","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5207"}}," ",{"text":"ウィンドウォール","hoverEvent":{"action":"show_text","value":["",{"text":"ウィンドウォール","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","周囲の飛翔物を妨げる風を生み出す。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ",{"text":"30","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"5","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","周囲のプレイヤーに、周囲の飛翔物を妨げる風を生み出す。","\n","対象範囲: ",{"text":"15","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5208"}}," ",{"text":"ルーラ","hoverEvent":{"action":"show_text","value":["",{"text":"ルーラ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"90","bold":true}],"\n","範囲内のプレイヤーをショップ島にテレポートする。\n上空が遮られていると失敗する。","\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5209"}}," ",{"text":"ラナルータ","hoverEvent":{"action":"show_text","value":["",{"text":"ラナルータ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"100","bold":true}],"\n","昼夜を入れ替える。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0.5","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5210"}}]

execute if score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 0"}}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 1"}}," ",{"text":"忍者","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2"}}," ",{"text":"狩人","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 3"}}," ",{"text":"白魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 4"}}," ",{"text":"召喚士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6"}}," ",{"text":"絡繰士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 7"}}]
execute unless score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 0"}}]
