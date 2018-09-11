def saddle_points(matrix):
    for length in range(len(matrix) - 1):
        if len(matrix[length]) != len(matrix[length + 1]):
            raise ValueError("Matrix Error: rows have different lengths!")

    saddles = set()
    for x, row in enumerate(matrix):
        for y, element in enumerate(row):
            column = [matrix[idx][y] for idx in range(len(matrix))]
            if element >= max(row) and element <= min(column):
                saddles.add((x, y))
    return saddles
