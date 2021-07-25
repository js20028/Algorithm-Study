def solution(nums):
    answer = 0
    s = set(nums)
    if len(s) <= len(nums)/2:
        answer = len(s)
    else:
        answer = len(nums)/2
    return answer
