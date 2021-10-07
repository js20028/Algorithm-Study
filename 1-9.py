def solution(numbers):
    answer = 45
    for i in range(1,10):
        if i in numbers:
            answer -= i
    return answer
