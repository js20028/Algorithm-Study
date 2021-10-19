def solution(a, b):
    sum = 0
    month = [31,29,31,30,31,30,31,31,30,31,30,31]
    week = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    for i in range(len(month)):
        if i < a-1:
            sum += month[i]
    sum += b

    return week[sum%7]
