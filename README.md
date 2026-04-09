# RedNosed-reports
Simple Code Challenge by Samdesk Canada Inc


# Red-Nosed Reports

## How I did and how to run the code

Each line in the input file is a report made of numbers.

A report is considered safe if:

- The numbers only go up OR only go down
- Each increment or decrease differences should be between 1 and 3 or -1 and -3

---

## Example

7 6 4 2 1  
-> differences: -1, -2, -2, -1  (safe and lovely)
-> safe (decreasing)

1 2 7 8 9  
-> differences: 1, 5, 1, 1  
-> not safe (5 goes beyond the acceptable differences)

---

## Approach

- Loop through each line
- Convert numbers from string to integers
- Calculate differences between each number
- Check if all differences are valid for increasing OR decreasing
- Count how many reports are safe

---

## How to run

Make sure Ruby is installed.

Run:
```bash
ruby solution.rb

