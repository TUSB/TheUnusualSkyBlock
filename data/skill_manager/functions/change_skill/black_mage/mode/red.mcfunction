##############################
### 黒魔導士モードスキル変更リスト表示(ルビー)
##############################

execute if score @s ChangeLevel matches 1..4 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストーム","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストーム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}]
execute if score @s ChangeLevel matches 5..9 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストーム","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストーム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイア","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイア","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}]
execute if score @s ChangeLevel matches 10..14 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストーム","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストーム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイア","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイア","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルト","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルト","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}]
execute if score @s ChangeLevel matches 15..16 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストーム","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストーム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイア","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイア","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルト","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルト","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}]
execute if score @s ChangeLevel matches 17..22 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストーム","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストーム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイア","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイア","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルト","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルト","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレイン","hoverEvent":{"action":"show_text","value":["",{"text":"ドレイン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 23..25 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイア","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイア","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルト","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルト","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレイン","hoverEvent":{"action":"show_text","value":["",{"text":"ドレイン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 26..29 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルト","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルト","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレイン","hoverEvent":{"action":"show_text","value":["",{"text":"ドレイン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 30..34 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレイン","hoverEvent":{"action":"show_text","value":["",{"text":"ドレイン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 35..36 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレイン","hoverEvent":{"action":"show_text","value":["",{"text":"ドレイン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 37..44 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 45..45 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 46..47 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 48..48 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 49..49 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}]
execute if score @s ChangeLevel matches 50..100 run tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"アイスストームⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"アイスストームⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の周囲の敵に氷属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5101"}}," ",{"text":"クロスファイアⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"クロスファイアⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","射線上の十字範囲の敵に炎属性ダメージ。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5102"}}," ",{"text":"サンダーボルトⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"サンダーボルトⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","自身より高くにいる敵に雷属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5103"}}," ",{"text":"ジオクラッシュⅢ","hoverEvent":{"action":"show_text","value":["",{"text":"ジオクラッシュⅢ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","地上に居る敵に地属性ダメージ。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5104"}}," ",{"text":"ドレインⅡ","hoverEvent":{"action":"show_text","value":["",{"text":"ドレインⅡ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","アンデッドでない敵一体からＨＰを吸収する。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"1","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5105"}}," ",{"text":"パルプンテ","hoverEvent":{"action":"show_text","value":["",{"text":"パルプンテ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"100","bold":true}],"\n","何が起こるか分からない。","\n","発動条件: ",{"text":"人参棒を持って右クリック","color":"aqua"},"\n","効果範囲: ",{"text":"15","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5106"}}]

execute if score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 0"}}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 1"}}," ",{"text":"忍者","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 2"}}," ",{"text":"狩人","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 3"}}," ",{"text":"白魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 4"}}," ",{"text":"召喚士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 6"}}," ",{"text":"絡繰士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7"}}]
execute unless score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 0"}}]
