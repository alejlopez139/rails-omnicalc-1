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
end
