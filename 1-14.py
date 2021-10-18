def solution(absolutes, signs):
    answer = 123456789
    for i in range(len(signs)):
        print(signs[i])
        if signs[i] == 0:
            absolutes[i] *= -1

    answer = sum(absolutes)
    return answer
