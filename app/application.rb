class Application

  def call(env)
    resp = Rack::Response.new
    n_1 = Kernel.rand(1..20)
    n_3 = Kernel.rand(1..20)
    n_2 = Kernel.rand(1..20)
    
    if n_1 == n_2 && n_2 == n_3
      resp.write "#{n_1}, #{n_2}, #{n_3}\nYou Win"
    else
      resp.write "#{n_1}, #{n_2}, #{n_3}\nYou Lose"
    end

    resp.finish
  end

end
