##############################
### 召喚士サポートスキル変更リスト表示(サファイア)
##############################

execute if score @s ChangeLevel matches 1..4 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}]
execute if score @s ChangeLevel matches 5..7 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}]
execute if score @s ChangeLevel matches 8..12 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}]
execute if score @s ChangeLevel matches 13..14 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンα","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンα","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"10","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}]
execute if score @s ChangeLevel matches 15..17 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンα","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンα","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"10","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}]
execute if score @s ChangeLevel matches 18..27 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンα","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンα","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"10","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}]
execute if score @s ChangeLevel matches 28..32 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンα","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンα","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"10","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"10","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}," ",{"text":"サモンE：マーチャント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：マーチャント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","商人を召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6206"}}]
execute if score @s ChangeLevel matches 33..34 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンβ","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンβ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"20","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}," ",{"text":"サモンE：マーチャント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：マーチャント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","商人を召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6206"}}]
execute if score @s ChangeLevel matches 35..44 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンβ","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンβ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"20","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}," ",{"text":"サモンE：マーチャント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：マーチャント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","商人を召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6206"}}," ",{"text":"サモンP：ゴーレム","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ゴーレム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","アイアンゴーレムを召喚する。\n体力：✦✦✦\n攻撃力：✧✧✧✧✧✧✧✧\n防御力：✦✦✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6207"}}]
execute if score @s ChangeLevel matches 45..47 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンβ","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンβ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"20","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}," ",{"text":"サモンE：マーチャント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：マーチャント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","商人を召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6206"}}," ",{"text":"サモンP：ゴーレム","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ゴーレム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","アイアンゴーレムを召喚する。\n体力：✦✦✦\n攻撃力：✧✧✧✧✧✧✧✧\n防御力：✦✦✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6207"}}," ",{"text":"サモンP：サーヴァント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：サーヴァント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","ジョニーを召喚する。\n体力：✦✦\n攻撃力：✦✦✦✦✦✦✧✧✧✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6208"}}]
execute if score @s ChangeLevel matches 48..100 run tellraw @s [{"text":"","color":"aqua"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 99"}}," ",{"text":"サモンP：スノー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：スノー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スノーゴーレムを召喚する。\n体力：✦\n攻撃力：✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6201"}}," ",{"text":"サモンE：スーパードラゴン","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：スーパードラゴン","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","スーパードラゴンを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6202"}}," ",{"text":"ヘイカモンβ","hoverEvent":{"action":"show_text","value":["",{"text":"ヘイカモンβ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"10","bold":true}],"\n","ペットを引き寄せる。","\n","効果範囲: ",{"text":"20","color":"aqua"},"m","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒","\n",{"text":"+スニーク","color":"green"},[{"text":" 消費MP:","color":"yellow"},{"text":"x3","bold":true}],"\n","ペットとプレイヤーを引き寄せる。","\n","対象範囲: ",{"text":"20","color":"aqua"},"m"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6203"}}," ",{"text":"サモンP：ウルフ","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ウルフ","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"30","bold":true}],"\n","オオカミを召喚する。\n体力：✦\n攻撃力：✦✦✦✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6204"}}," ",{"text":"サモンE：ヒーリングキャット","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：ヒーリングキャット","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","ぬこかわいいよぬこ。","\n","効果範囲: ",{"text":"5","color":"aqua"},"m","\n","効果時間: ",{"text":"7.5","color":"aqua"},"秒","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6205"}}," ",{"text":"サモンE：マーチャント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：マーチャント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","商人を召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6206"}}," ",{"text":"サモンP：ゴーレム","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：ゴーレム","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"40","bold":true}],"\n","アイアンゴーレムを召喚する。\n体力：✦✦✦\n攻撃力：✧✧✧✧✧✧✧✧\n防御力：✦✦✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6207"}}," ",{"text":"サモンP：サーヴァント","hoverEvent":{"action":"show_text","value":["",{"text":"サモンP：サーヴァント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"50","bold":true}],"\n","ジョニーを召喚する。\n体力：✦✦\n攻撃力：✦✦✦✦✦✦✧✧✧✧✧✧\n防御力：✦","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6208"}}," ",{"text":"サモンE：グライダー","hoverEvent":{"action":"show_text","value":["",{"text":"サモンE：グライダー","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"20","bold":true}],"\n","グライダーを召喚する。","\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"3","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 6209"}}]

execute if score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 8"}}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 1"}}," ",{"text":"忍者","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 2"}}," ",{"text":"狩人","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 3"}}," ",{"text":"白魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 4"}}," ",{"text":"黒魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 5"}}," ",{"text":"絡繰士","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 7"}}]
execute unless score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"共通","clickEvent":{"action":"run_command","value":"/trigger ChangeSupBlue set 8"}}]
