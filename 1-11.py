def solution(new_id):
    # 1단계
    answer = new_id.lower()
    temp = ''

    # 2단계
    for a in answer:
        if a.isalnum()!=True and a!='-' and a!='_' and a!='.':
            answer = answer.replace(a,"")

    # 3단계
    while answer.find('..') != -1:
        answer = answer.replace("..",".")

    # 4단계?
    answer = answer.strip(".")       

    # 5단계
    if answer == "":
        answer += "a"

    # 6단계?
    if len(answer) >= 16:
        answer = answer[:15].strip(".")

    # 7단계
    if len(answer) <= 2:
        while len(answer) < 3:
            answer += answer[len(answer)-1]

    print(answer)
    return answer
