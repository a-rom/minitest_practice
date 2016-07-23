require "mini_test_practice/version"

module MiniTestPractice
  class Main
    def odd?(n)
      if (n % 2) == 1
        return true
      else
        return false
      end
    end

    def even?(n)
      return ! odd?(n)
    end
  end
end
