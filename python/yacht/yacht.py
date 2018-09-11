# Score categories
# Change the values as you see fit
YACHT = 0
ONES = 1
TWOS = 2
THREES = 3
FOURS = 4
FIVES = 5
SIXES = 6
FULL_HOUSE = 7
FOUR_OF_A_KIND = 8
LITTLE_STRAIGHT = 9
BIG_STRAIGHT = 10
CHOICE = 11


def score(dice, category):
    if category == YACHT:
        return 50 if len(set(dice)) == 1 else 0

    if category >= ONES and category <= SIXES:
        return dice.count(category) * category

    dice_set = set(dice)
    if category == FULL_HOUSE:
        if len(dice_set) == 2:
            if dice.count(dice[0]) == 2 or dice.count(dice[0]) == 3:
                return sum(dice)

    if category == FOUR_OF_A_KIND:
        for num in dice_set:
            if dice.count(num) >= 4:
                return 4 * num

    if category == LITTLE_STRAIGHT:
        if dice_set == set([x for x in range(1, 6)]):
            return 30

    if category == BIG_STRAIGHT:
        if dice_set == set([x for x in range(2, 7)]):
            return 30

    if category == CHOICE:
        return sum(dice)

    # END
    return 0

