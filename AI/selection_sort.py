def selectionSort(array): 
    
    for ind in range(len(arr)): 
        min_index = ind 
 
        for j in range(ind + 1, len(arr)):
            if array[j] < array[min_index]:
                min_index = j
        (array[ind], array[min_index]) = (array[min_index], array[ind])
 
arr = [-2, 45, 0, 11, -9,88,-97,-202,747]
selectionSort(arr)
print('The array after sorting in Ascending Order by selection sort is:')
print(arr)  