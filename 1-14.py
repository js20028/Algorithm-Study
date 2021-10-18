def solution(absolutes, signs):
    answer = 123456789
    for i in range(len(signs)):
        print(signs[i])
        if signs[i] == 0:
            absolutes[i] *= -1

    answer = sum(absolutes)
    return answer


# 다른사람 풀이
# def solution(absolutes, signs):
#    return sum(absolutes if sign else -absolutes for absolutes, sign in zip(absolutes, signs))
