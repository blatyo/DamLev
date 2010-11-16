class DamLev  
  def self.distance(str1, str2)
    return str1.length if str2.empty?
    return str2.length if str1.empty?
    
    distance_matrix = build_matrix(str1, str2)
    
    (1..str1.length).each do |i|
      (1..str2.length).each do |j|
        sub_cost = str1[i-1] == str2[j-1] ? 0 : 1
        
        distance_matrix[i][j] = [
          distance_matrix[i-1][j] + 1,            # deletion
          distance_matrix[i][j-1] + 1,            # insertion
          distance_matrix[i-1][j-1] + sub_cost    # substitution
        ].min    
                                    
        if i > 1 && j > 1 && str1[i-1] == str2[j-2] && str1[i-2] == str2[j-1]
          distance_matrix[i][j] = [
            distance_matrix[i][j], 
            distance_matrix[i-2][j-2] + sub_cost  # transposition
          ].min
        end
      end
    end
    
    distance_matrix.last.last
  end
  
  private
  
  def self.build_matrix(str1, str2)
    distance_matrix = [(0..str2.length).to_a]
    
    (1..str1.length).each do |i|    
      distance_matrix[i] = [i]
    end
    
    distance_matrix
  end
end