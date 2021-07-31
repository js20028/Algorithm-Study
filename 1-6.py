def solution(array, commands):
    answer = []
    for i in range(len(commands)):
        lst = array[commands[i][0]-1:commands[i][1]]
        lst.sort()
        num = lst[commands[i][2]-1]
        answer.append(num)
    
    return answer
