require 'pry'

class CashRegister

    attr_accessor :total, :discount, :title, :price, :quantitiy, :all_items, :all_prices

   

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
        @all_prices = []

    end

    def add_item(title, price, quantitiy = 1)
        self.total += price * quantitiy
        quantitiy.times { self.all_items << title }
        quantitiy.times { self.all_prices << price }
    end

    def apply_discount
        discount_to_decimal = discount.to_f / 100
        discount = total * discount_to_decimal
        self.total = total - discount
        if discount > 0
        "After the discount, the total comes to $800."  
        elsif discount = 0
            "There is no discount to apply."
        end
    end

    def items
        self.all_items
    end

    def void_last_transaction
        all_prices.pop()
        first_value = all_prices.first
        self.total = first_value

    end

    
end
