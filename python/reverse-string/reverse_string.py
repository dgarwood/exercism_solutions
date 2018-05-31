def reverse(input=''):
    reverse = ''
    while len(input) > 0:
        reverse, input = reverse + input[-1], input[:-1]
    return reverse
