require "test_helper"

class CartTest < MiniTest::Test
    # create cart, add item, and make sure cart isn't empty
    def test_adds_one_item
        cart = Cart.new
        cart.add_item 1
        
        assert_equal cart.empty?, false
    end
    
    # add a product more than once
    def test_adds_up_in_quantity
        cart = Cart.new
        3.times { cart.add_item 1 }
        
        assert_equal 1, cart.items.length
        assert_equal 3, cart.items.first.quantity
    end
    
    # cart identifies products
    def test_retrieves_products
        product = Product.create! name: "Apple", price: 5
        
        cart = Cart.new
        cart.add_item product.id 
        
        assert_kind_of Product, cart.items.first.product
    end
end