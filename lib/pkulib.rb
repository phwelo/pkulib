class PKUlib
  ## Conversions for non-liquid foods to grams
  def self.oz2gram(ounces)
    grams = ounces / 0.035274
  end

  def self.mg2gram(milligrams)
    grams = milligrams / 1000.0
  end

  ## Conversions for beverages/liquids to grams
  def self.floz2ml(floz)
    ml = floz / 0.033814
  end

  def self.litre2ml(litre)
    ml = litre / 0.001
  end

  ## average method to find a finite number in phe range
  def self.average(*numbers)
      numbers.reduce(:+).to_f / numbers.size
  end

  ## Perform the conversion of protein to milligrams of phenylalanine
  def self.phecalc(protein,qualifier)
    if protein < 0.5
      min = 0
      max = 0.5 * 64.5
    elsif qualifier == "fruit"
      min = protein * 20
      max = protein * 30
    elsif qualifier == "veg"
      min = protein * 20
      max = protein * 40
    else
      min = protein * 20
      max = protein * 64.5
    end
  {
      :minimum => min,
      :maximum => max
  }
  end
end