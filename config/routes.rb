Nhgd13::Application.routes.draw do
  match ':controller(/:action(/:id))(.:format)'
  root :courses => :find
end
