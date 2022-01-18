def ISBN(numer: str):

    if not isinstance(numer, str):
        return False
    numer = numer.replace("-", "")
    if len(numer) != 13 or not numer.isdigit():
        return False

    value = 0

    for i in range(0, 12):
        if i % 2 == 0:
            value += int(numer[i])
        else:
            value += 3 * int(numer[i])

    value = value % 10

    if value != 0:
        value = 10 - value

    if value != int(numer[12]):
        return False

    return True