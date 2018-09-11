from collections import defaultdict
class School(object):
    def __init__(self):
        self.entries = defaultdict(list)

    def add_student(self, name, grade):
        self.entries[grade].append(name)

    def roster(self):
        result = []
        for grade in sorted(self.entries.keys()):
            self.entries[grade].sort()
            result += self.entries[grade]
        return result

    def grade(self, grade_number):
        return sorted(self.entries[grade_number])

