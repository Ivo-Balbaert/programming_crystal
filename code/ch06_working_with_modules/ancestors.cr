module M1
  def meth1
    41
  end
end

class C1
  def meth1
    42
  end
end

class D1 < C1
  include M1
end

class E1 < D1
end

E1.new.m1    # => Error: undefined method 'm1' for E1
E1.new.meth1 # => 41  # meth1 from module M1 is called
