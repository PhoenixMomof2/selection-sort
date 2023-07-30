let input = [3, -1, 5, 2]

function select_sort(input){
  let x = input.length
  
  for (let i = 0; i < x-1; i++){
    let minIdx = i;

    for (let j = i + 1; j < x; j++){
      if (input[j] < input[minIdx]){
        minIdx = j;
      }
    }
    // Swap the minimum element with the first unsorted element
    if (minIdx !== i) {
      const temp = input[i];
      input[i] = input[minIdx];
      input[minIdx] = temp;
    }
  }
  return input;  
}
console.log(select_sort(input))