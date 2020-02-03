class ApplicationController < ActionController::Base
  def flex_square
    # The Parameters go into "params"
    the_num = params.fetch("num").to_i
    the_square = the_num**2

    # output_message = "The square of #{the_num} is #{the_square}"

    output_hash = {
      :number => the_num,
      :square => the_square
    }

    render({:plain => output_hash.to_json})
  end 

  def flex_sqrt
    # The Parameters go into "params"
    the_num = params.fetch("num").to_i
    the_sqrt = the_num**(0.5)

    # output_message = "The square of #{the_num} is #{the_square}"

    output_hash = {
      :number => the_num,
      :square_root => the_sqrt
    }

    render({:plain => output_hash.to_json})
  end 

  def rand_range
    # The Parameters go into "params"
    min = params.fetch("min").to_i
    max = params.fetch("max").to_i

    rand_num = rand(min...max)

    # output_message = "The square of #{the_num} is #{the_square}"

    output_hash = {
      :min => min,
      :max => max,
      :random => rand_num
    }

    render({:plain => output_hash.to_json})
  end 

  def query_square
    number = params.fetch("input_number").to_f
    square = number**2

    output_hash = {
      :number => number.to_i,
      :square => square.to_i
    }

    render({:plain => output_hash.to_json})
  end

  def query_sqrt
    number = params.fetch("input_number").to_f
    sqrt = number**(0.5)

    output_hash = {
      :number => number.to_i,
      :square_root => sqrt
    }

    render({:plain => output_hash.to_json})
  end

  def query_range
    min = params.fetch("input_min").to_f
    max = params.fetch("input_max").to_f

    rando = rand(min...max)

    output_hash = {
      :min => min,
      :max => max,
      :random => rando
    }

    render({:plain => output_hash.to_json})
  end

  def monthly_payment
    apr = params.fetch("input_apr").to_f
    years = params.fetch("input_years").to_i
    price = params.fetch("input_pv").to_f

    r = (apr/12)/100
    mos = 12 * years

    numer = (r)*price
    denom = (1 - (1+(r))**(-1*mos))

    payment = (numer/denom).round(2)

    output_hash = {
      :purchase_price => price.to_i,
      :apr => apr,
      :years => years,
      :monthly_payment => payment
    }

    render({:plain => output_hash.to_json})
  end
end
