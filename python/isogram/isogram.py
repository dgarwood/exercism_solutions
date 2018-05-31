def is_isogram(string):
    string = string.lower()
    position = len(string) - 1
    while position > 0:
        if string[position] in string[:position] \
        and not string[position] in ' -':
            return False
        position -= 1
    return True
