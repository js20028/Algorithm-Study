def solution(nums):
    answer = 0
    for i in range(len(nums)-2):
        for j in range(i+1,len(nums)-1):
            for k in range(j+1,len(nums)):
                if (nums[i]+nums[j]+nums[k]) % 2 != 0:
                    for l in range(2,(nums[i]+nums[j]+nums[k])//2+1):
                        if (nums[i]+nums[j]+nums[k]) % l == 0:
                            break
                        elif l==((nums[i]+nums[j]+nums[k])//2):
                            answer += 1
    return answer
