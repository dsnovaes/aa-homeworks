class Array
    def quicksort
        #base case
        return self.dup if self.length <= 1

        pivot = self.first # pivot - starting point
        left = self.drop(1).select { |el| el < pivot } # left side
        right = self.drop(1).select { |el| el >= pivot } # right side

        # recursive step
        sorted_left = left.quicksort # sorts left side
        sorted_right = right.quicksort # sorts right side

        # return
        sorted_left + [pivot] + sorted_right
    end
end

p [2,9,1,5,0,4,2,6,7,5,8,4,6,3,6,8].quicksort