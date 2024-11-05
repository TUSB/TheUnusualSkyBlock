#> job:status/operation_end
### JobStatus の操作の一番最後にOhMyDatに書き込む時に実行する

function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus set from storage job: JobStatus
