# 소리 재생
$execute at @n[scores={nomic.data=$(id)}] run playsound $(sound) master @a ~ ~ ~

# 같은 소리를 연속으로 사용한다면 기록 중지
$execute if data storage nomic:global data[{id: $(id), history_1: "$(sound)"}] run return 1

# 기록 전부 한 칸씩 밀고 1번 기록에 소리 저장하기
$data modify storage nomic:global data[$(id)].history_9 set from storage nomic:global data[$(id)].history_8
$data modify storage nomic:global data[$(id)].history_8 set from storage nomic:global data[$(id)].history_7
$data modify storage nomic:global data[$(id)].history_7 set from storage nomic:global data[$(id)].history_6
$data modify storage nomic:global data[$(id)].history_6 set from storage nomic:global data[$(id)].history_5
$data modify storage nomic:global data[$(id)].history_5 set from storage nomic:global data[$(id)].history_4
$data modify storage nomic:global data[$(id)].history_4 set from storage nomic:global data[$(id)].history_3
$data modify storage nomic:global data[$(id)].history_3 set from storage nomic:global data[$(id)].history_2
$data modify storage nomic:global data[$(id)].history_2 set from storage nomic:global data[$(id)].history_1
$data modify storage nomic:global data[$(id)].history_1 set value "$(sound)"