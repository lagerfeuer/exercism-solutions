from copy import deepcopy

_DISCOUNTS = [0, 0, .05, .1, .2, .25]
_PRICE = 800


def _cost(basket):
    return _PRICE * (1.0 - _DISCOUNTS[len(basket)]) * len(basket)


def cost(baskets):
    return sum(_cost(basket) for basket in baskets)


def calculate_total(books):
    groups = []

    # iterate over all books
    for book in books:
        cheapest = None
        groups.append([])
        # iterate over the groups so far
        for idx, group in enumerate(groups):
            # test the current book with the current group
            # if not already in it
            if book not in group:
                new = deepcopy(groups)
                new[idx].append(book)
                # find the cheaper collection
                cheapest = min(new, cheapest, key=cost) if cheapest else new

        # clean the collection of empty groups
        groups = [g for g in cheapest if g]

    return cost(groups)
