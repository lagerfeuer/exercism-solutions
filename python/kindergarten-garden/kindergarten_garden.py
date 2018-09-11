import collections

class Garden(object):
    _students = [
        "Alice", "Bob", "Charlie", "David",
        "Eve", "Fred", "Ginny", "Harriet",
        "Ileana", "Joseph", "Kincaid", "Larry",
    ]

    _plants = {
        plant[0]: plant for plant in ["Clover", "Grass", "Radishes", "Violets"]
    }

    def __init__(self, diagram, students=_students):
        self.students_plants = collections.defaultdict(list)
        for idx, student in enumerate(sorted(students)):
            for row in diagram.split("\n"):
                self.students_plants[student] += [
                    self._plants[p] for p in row[idx*2:idx*2+2]
                ]

    def plants(self, student):
        return self.students_plants[student]
