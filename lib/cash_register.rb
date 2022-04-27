
class CashRegister
    attr_accessor :total, :items, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []                                                                
    end

    def add_item(title, price, quantity = 1)
        # @total += (price * quantity)

        @last_transaction = price * quantity
        @total += self.last_transaction
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        if discount == 0
            @total
            "There is no discount to apply."
        else
            @total = @total - (@discount).to_f / 100 * @total
            "After the discount, the total comes to $#{@total.to_i}."
        # if self.discount != 0
        #     discount_as_a_percent = (100.0 - self.discount.to_f) / 100
        #     self.total = (self.total * discount_as_a_percent).to_i
        #     "After the discount, the total comes to $#{self.total}."
        # else
        #     "There is no discount to apply."
        end
    end



    def void_last_transaction
        @total -= @last_transaction
    end
end
