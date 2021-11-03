class Dock
  attr_reader :name, :max_rental_time, :rental_log
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = Hash.new
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end
  def charge(boat)
    receipt = Hash.new
    receipt[:credit_card] = (@rental_log[boat]).credit_card_number
    amount_charged = boat.price_per_hour * boat.hours_rented
    receipt[:amount] = amount_charged
    receipt
  end
end
