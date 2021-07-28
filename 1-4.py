def solution(participant, completion):
    participant.sort()
    completion.sort()
    for i in range(len(completion)):
        if participant[i] != completion[i]:
            answer = participant[i]
            return answer
        if i == (len(completion)-1):
            answer = participant[len(completion)]
            return answer
