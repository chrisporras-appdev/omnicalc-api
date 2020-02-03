Rails.application.routes.draw do

  get("/flexible/square/:num", {:controller => "application", :action => "flex_square"})

  get("/flexible/square_root/:num", {:controller => "application", :action => "flex_sqrt"})

  get("/flexible/random/:min/:max", {:controller => "application", :action => "rand_range"})

  get("/square/results", {:controller => "application", :action => "query_square"})

  get("/square_root/results", {:controller => "application", :action => "query_sqrt"})

  get("/random/results", {:controller => "application", :action => "query_range"})

  get("/payment/results", {:controller => "application", :action => "monthly_payment"})

  # ================================================================================
  # Write your routes above.
  # ================================================================================
end
