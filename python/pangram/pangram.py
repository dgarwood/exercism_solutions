def is_pangram(sentence):
    for l in 'abcdefghijklmnopqrstuvwxyz':
        if not l in sentence.lower():
            return False

    return True
