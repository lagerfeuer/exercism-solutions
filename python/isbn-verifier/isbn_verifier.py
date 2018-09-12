def verify(isbn):
    total = 0
    isbn = isbn.replace('-', '')
    if len(isbn) != 10:
        return False
    for i in range(len(isbn)):
        if isbn[i] == 'X':
            total += 10
        elif '0' <= isbn[i] <= '9':
            total += int(isbn[i]) * (10-i)
        else:
            return False
    return total % 11 == 0
