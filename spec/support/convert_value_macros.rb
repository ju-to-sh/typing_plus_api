module ConvertValueMacros
  def convert_values_to_integers(hash)
    hash.transform_values do |value|
      if value.is_a?(String) && value.match?(/\A\d+\z/)
        value.to_i
      else
        value
      end
    end
  end
end
