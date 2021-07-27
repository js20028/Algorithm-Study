def solution(s):
    answer = ""
    arr = ""

    for i in s:
        if i.isdigit():
            answer += i
        else:
            arr += i
            if arr == "zero":
                answer += "0"
                arr = ""
            elif arr == "one":
                answer += "1"
                arr = ""
            elif arr == "two":
                answer += "2"
                arr = ""
            elif arr == "three":
                answer += "3"
                arr = ""
            elif arr == "four":
                answer += "4"
                arr = ""
            elif arr == "five":
                answer += "5"
                arr = ""
            elif arr == "six":
                answer += "6"
                arr = ""
            elif arr == "seven":
                answer += "7"
                arr = ""
            elif arr == "eight":
                answer += "8"
                arr = ""
            elif arr == "nine":
                answer += "9"
                arr = ""

    return int(answer)
