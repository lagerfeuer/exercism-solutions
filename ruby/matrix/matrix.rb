class Matrix
  def initialize(matrix_str)
    @matrix = Array.new
    matrix_str.split("\n").each do |r|
      @matrix.append(r.split(" ").map{ |e| e.to_i })
    end
  end

  def rows
    @matrix
  end

  def columns
    transposed_matrix = Array.new
    for x in (0..(@matrix[0].length - 1))
      row = Array.new
      for y in (0..(@matrix.length - 1))
        row.append(@matrix[y][x])
      end
      transposed_matrix.append(row)
    end
    transposed_matrix
  end
end
