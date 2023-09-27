Rails.application.routes.draw do
  get("/", {:controller => "calc", :action => "square_new"})
  get("/square/new", {:controller => "calc", :action => "square_new"})
  get("/square/results", {:controller => "calc", :action => "square_result"})
  get("/square_root/new", {:controller => "calc", :action => "square_root_new"})
  get("/square_root/results", {:controller => "calc", :action => "square_root_result"})
  get("/payment/new", {:controller => "calc", :action =>"payment_new"})
  get("/payment/results", {:controller => "calc", :action => "payment_result"})
  get("random/new", {:controller => "calc", :action => "random_new"})
end
