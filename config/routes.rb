AuctionStats::Application.routes.draw do
	root to: "statics#home"
  match '/about' => 'statics#about'
  match '/selling/(:time)' => 'statics#selling', as: "selling"
end
