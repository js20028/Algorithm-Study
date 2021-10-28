def solution(d, budget):
    answer = 0
    sum = 0
    for i in sorted(d):
        sum += i
        answer += 1
        if sum > budget:
            answer -= 1
            break
            
    return answer
