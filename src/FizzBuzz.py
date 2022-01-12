class FizzBuzz:
    def game(self, num):
        if type(num) is not int:
            raise ValueError("num musi być liczbą")
        if ((num % 15) == 0):
            return "FizzBuzz"
        elif ((num % 5) == 0):
            return "Buzz"
        elif ((num % 3) == 0):
            return "Fizz"
        else:
            return "\"" + str(num) + "\""