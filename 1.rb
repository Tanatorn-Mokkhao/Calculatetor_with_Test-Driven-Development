class Calculate
    def sum(a,b)
            return a+b
    end
    def minus(a,b)
            return a-b
    end
    def multiply(a,b)
        return a*b
    end
    def  division(a,b)
        if b==0
            return "Fail"
        else
            return a / b
        end
    end
    def checknum(a)
        begin
            a=Float(a)
        rescue 
            a=String(a)
        end
        if a.class==Float
            return "Pass"
        else 
            return "Fail"
        end
    end
    def checkoperand(a)
        begin
            a=Integer(a)
        rescue 
            a=String(a)
        end
        if a.class==Integer && a > 0 && a < 5 
            return "Pass"
        else 
            return "Fail"
        end
    end
end

require 'test/unit'

class My_test <Test::Unit::TestCase
    def test_sum_float_1
        assert_equal(3.0,Calculate.new.sum(1.0,2.0))
    end
    def test_sum_float_2
        assert_equal(4.4,Calculate.new.sum(1.2,3.2))
    end
    def test_sum_float_3
        assert_equal(-10,Calculate.new.sum(-20,10))
    end


    def test_minus_float_1
        assert_equal(1.0,Calculate.new.minus(3.0,2.0))
    end
    def test_minus_float_2
        assert_equal(1.4,Calculate.new.minus(3.5,2.1))
    end
    def test_minus_float_3
        assert_equal(-10,Calculate.new.minus(10,20))
    end
    def test_minus_float_4
        assert_equal(10,Calculate.new.minus(-10,-20))
    end

    def test_multiply_float_1
        assert_equal(4,Calculate.new.multiply(2,2))
    end
    def test_multiply_float_2
        assert_equal(-4,Calculate.new.multiply(-2,2))
    end
    def test_multiply_float_3
        assert_equal(4.4,Calculate.new.multiply(2.2,2))
    end
    def test_multiply_float_4
        assert_equal(4,Calculate.new.multiply(-2,-2))
    end

    
   def test_division_float_1
        assert_equal(2,Calculate.new.division(4,2))
   end
   def test_division_float_2
        assert_equal("Fail",Calculate.new.division(4,0))
   end
    def test_division_float_3
        assert_equal(2.1,Calculate.new.division(4.2,2))
    end
    def test_division_float_4
        assert_equal(-2.1,Calculate.new.division(-4.2,2))
    end

    def test_checknum_1
        assert_equal("Fail",Calculate.new.checknum("abc"))
    end
    def test_checknum_2
        assert_equal("Fail",Calculate.new.checknum("1.5A"))
    end
    def test_checknum_3
        assert_equal("Pass",Calculate.new.checknum("1"))
    end
    def test_checknum_4
        assert_equal("Pass",Calculate.new.checknum("1.5"))
    end

    def test_Operand_input_1
        assert_equal("Pass",Calculate.new.checkoperand("1"))
    end
    def test_Operand_input_2
        assert_equal("Fail",Calculate.new.checkoperand("0"))
    end
    def test_Operand_input_3
        assert_equal("Fail",Calculate.new.checkoperand("A"))
    end
    def test_Operand_input_4
        assert_equal("Pass",Calculate.new.checkoperand("4"))
    end
    

end

class My_Program
    puts "input num 1 :"
    num1 = gets
    valid=Calculate.new.checknum(num1)
    if valid == "Pass"
        puts  "input num 2 :"
        num2 = gets
        valid=Calculate.new.checknum(num2)
        if valid == "Pass"
               puts "Choose Operand:\n1.+\n2.-\n3.*\n4./"
               operand=gets
               valid=Calculate.new.checkoperand(operand)
               if valid == "Pass"
                    if Integer(operand) == 1
                        result=Calculate.new.sum(Float(num1),Float(num2))
                    elsif Integer(operand) == 2
                        result=Calculate.new.minus(Float(num1),Float(num2))
                    elsif Integer(operand) == 3
                        result=Calculate.new.multiply(Float(num1),Float(num2))
                    elsif Integer(operand) == 4
                        result=Calculate.new.division(Float(num1),Float(num2))
                    end
                    puts "Result :"+String(result)
                   
               else 
                    puts "Input Operand must between 1-4"
               end
        else
            puts "Input must be number"
        end
    else
        puts "Input must be number"
    end
end
 