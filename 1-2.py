def solution(lottos, win_nums):
    answer = []
    correct = 0
    zero = 0
    rank = 7
    max_rank = 0
    min_rank = 0
    for num in lottos:
        if num == 0:
            zero += 1
        elif num in win_nums:
            correct += 1

    if correct+zero >= 2:
        max_rank = rank - correct - zero
    else:
        max_rank = 6

    if correct >= 2:
        min_rank = rank - correct
    else:
        min_rank = 6

    answer.append(max_rank)
    answer.append(min_rank)

    return answer
