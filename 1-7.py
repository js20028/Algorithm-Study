def solution(n, lost, reserve):
    answer = 0
    lst = []
    for i in range(n):
        lst.append(1)
        
    for i in range(len(lost)):
        lst[lost[i]-1] -= 1
        
    for i in range(len(reserve)):
        lst[reserve[i]-1] += 1 
    
    lst.insert(0,1)
    lst.append(1)
     
    for i in range(len(lst)):
        if lst[i] == 0:
            if lst[i-1] == 2:
                lst[i-1] -= 1
                lst[i] += 1
            elif lst[i+1] == 2:
                lst[i+1] -= 1
                lst[i] += 1
            
    for i in lst:
        if i == 1 or i == 2:
            answer += 1
            
    return answer-2
