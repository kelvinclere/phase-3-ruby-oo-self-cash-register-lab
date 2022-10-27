# class CashRegister
#     attr_accessor :total, :discount, :items, :amount
#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount
#         @items = []
#         @last_transaction = 0
#     end
#     def add_item(item,price,quantity = 1)
#         @total += price * quantity
#         quantity.times do
#             @items << item
#         end
#         @last_transaction = price * quantity
#     end
#     def apply_discount
#         @discount > 0 ? "After the discount, the total comes to $#{@total -= @total * @discount / 100}." : "There is no discount to apply."
#     end
#     def void_last_transaction
#         @total -= @last_transaction
#     end       
# end

class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction
   
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end
    def total
        @total
    end

    def add_item(title, amount, quantity=1)
        self.last_transaction = amount * quantity
        self.total += self.last_transaction
        quantity.times do
            self.items << title
          end
    end

    def apply_discount
        if self.discount == 0
           return "There is no discount to apply."
        else 
            self.total -= self.total * self.discount / 100
            return "After the discount, the total comes to $#{self.total}."
            
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction

    end
end


