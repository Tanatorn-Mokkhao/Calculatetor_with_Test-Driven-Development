class Calculate
    def sum(a,b)
            return a+b
    end
def checknum(a)
    begin
        a=Float(a)
    rescue 
        a=String(a)
    end
    if a.class==Float
        a=Float(a)
    else 
        return "Fail"
    end
end
end


require 'test/unit'


class My_test <Test::Unit::TestCase
    def test_Checknum
        assert_equal(10.0,Calculate.new.checknum("10"))
    end
    def test_Sum
        assert_equal(3,Calculate.new.sum(1,2))
    end
end
