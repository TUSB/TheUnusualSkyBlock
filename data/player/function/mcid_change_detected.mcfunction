#> player:mcid_change_detected
function player:initialized

tellraw @a ""
tellraw @a {"translate":"[INFO]\n プレイヤー名の変更を検知しました。ステータスが引き継がれていません。\n以下のページを参考にワールドデータのスコアボードファイルを修正してください。"}
tellraw @a ""
tellraw @a {"translate":"https://ai-akaishi.hatenablog.jp/entry/ar970627","underlined":true,"clickEvent":{"action":"open_url","value":"https://ai-akaishi.hatenablog.jp/entry/ar970627"}}
tellraw @a ""
tellraw @a {"translate":"修正が必要なプレイヤー : %1$s","with":[{"selector":"@s"}]}
