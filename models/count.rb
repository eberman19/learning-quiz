class Counter
  def initialize(params)
    @params = params
    @t_count = 0
    @v_count = 0
    @a_count = 0
  end
  def t
    @params.each_value do |value|
      if value == "T"
        @t_count += 1
      end
    end
    return @t_count
  end
   def v
    @params.each_value do |value|
      if value == "V"
        @v_count += 1
      end
    end
      return @v_count
  end
   def a
    @params.each_value do |value|
      if value == "A"
        @a_count += 1
      end
       return @a_count
    end
  end
  def t_count
    @t_count
  end
  def v_count
    @v_count
  end
  def a_count
    @a_count
  end
  def count
    if @t_count > @v_count && @t_count > @a_count
      return "t"
    elsif @v_count > @a_count && @v_count > @t_count
      return "v"
    else
      return "a"
    end
  end
end
