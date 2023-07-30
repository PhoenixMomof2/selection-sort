def selection_sort(input):
    n = len(input)

    for i in range(n - 1):
        min_idx = i

        for j in range(i + 1, n):
            if input[j] < input[min_idx]:
                min_idx = j

        # Swap the minimum element with the first unsorted element
        if min_idx != i:
            input[i], input[min_idx] = input[min_idx], input[i]

    return input

# Test the function
input = [3, -1, 5, 2]
sorted_array = selection_sort(input)
print(sorted_array) # Output: [-1, 2, 3, 5]
