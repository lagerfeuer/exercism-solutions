def append(xs, ys):
    zs = list(xs)
    for y in ys:
        zs.append(y)
    return zs


def concat(lists):
    result = []
    for l in lists:
        result = append(result, l)
    return result


def filter_clone(function, xs):
    ys = []
    for x in xs:
        if function(x):
            ys.append(x)
    return ys


def length(xs):
    list_len = 0
    for x in xs:
        list_len += 1
    return list_len


def map_clone(function, xs):
    ys = []
    for x in xs:
        ys.append(function(x))
    return ys


def foldl(function, xs, acc):
    for x in xs:
        acc = function(acc, x)
    return acc


def foldr(function, xs, acc):
    for x in reverse(xs):
        acc = function(x, acc)
    return acc


def reverse(xs):
    ys = []
    for i in range(length(xs)):
        ys.append(xs[-(i+1)])
    return ys
