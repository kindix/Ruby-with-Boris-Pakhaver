def flippingMatrix(matrix)
    total = []
    (0...(matrix.length/2)).each do |idx1|
        (0...(matrix.length/2)).each do |idx2|
            total << [matrix[idx1][idx2],
            matrix[(matrix.length - 1)-idx1][idx2],
            matrix[idx1][(matrix.length - 1)-idx2],
            matrix[(matrix.length - 1)-idx1][(matrix.length - 1)-idx2]].max
        end
    end
    total.sum
end

matrix = [[10, 23, 13, 44], [13, 4, 14, 0], [1, 2, 4, 0], [1, 2, 3, 5]]

p flippingMatrix(matrix)

a, b, c, d  = matrix
a.concat(b,c,d).sort!.reverse!
p a[0, matrix.length].sum


p "12 3   123".scan(/\S+\s\S+\s+\S+/).join


  p "32threeormorealphabets.".scan(/\d{1,2}[a-zA-Z]{3,}[\W]{0,3}/)
