class CalcController < ApplicationController

  def square_new
    render({:template => "calc_templates/square_new"})
  end

  def square_result
    @num = params.fetch("number").to_f
    @the_result = @num ** 2
    render({:template => "calc_templates/square_result"})
  end

  def square_root_new
    render({:template => "calc_templates/square_root_new"})
  end

  def square_root_result
    @num = params.fetch("user_number").to_f
    @the_result = @num ** 0.5
    render({:template => "calc_templates/square_root_results"})
  end

  def payment_new
    render(:template => "calc_templates/payment_new")
  end

  def payment_result
    @apr = params.fetch("apr").to_f
    @num_of_years = params.fetch("year").to_i

    @principal = params.fetch("principal").to_i

    periods_remaining = @num_of_years * 12
    monthly_interest_rate = @apr.round(4) / 100 / 12
    numerator = @principal * monthly_interest_rate * (1 + monthly_interest_rate)** periods_remaining
    denominator = (1 + monthly_interest_rate)** periods_remaining - 1

    @monthly_payment = numerator / denominator

    @formatted_apr = sprintf("%.4f", @apr)
    render(:template => "calc_templates/payment_results")
  end

  def random_new
    render(:template =>"calc_templates/random_new")
  end

  def random_result
    @min = params.fetch("min").to_i
    @max = params.fetch("max").to_i
    @result = Random.new
    @newresult = @result.rand(@min..@max)
    render(:template => "calc_templates/random_result")
  end
end
