def solution(answers):
    answer = []
    math1 = [1,2,3,4,5]
    math2 = [2,1,2,3,2,4,2,5]
    math3 = [3,3,1,1,2,2,4,4,5,5]
    cnt1 = 0
    cnt2 = 0
    cnt3 = 0

    for i in range(len(answers)):
        if answers[i] == math1[i%5]:
            cnt1 += 1
        if answers[i] == math2[i%8]:
            cnt2 += 1
        if answers[i] == math3[i%10]:
            cnt3 += 1
    if cnt1 == max(cnt1,cnt2,cnt3):
        answer.append(1)
    if cnt2 == max(cnt1,cnt2,cnt3):
        answer.append(2)
    if cnt3 == max(cnt1,cnt2,cnt3):
        answer.append(3)
    return answer
