Rails.application.routes.draw do
  # 繝医ャ繝励・繝ｼ繧ｸ
  root "homes#top"

  # Books 縺ｮ CRUD 逕ｨ
  resources :books

  # Rails 縺ｮ繝倥Ν繧ｹ繝√ぉ繝・け・郁・蜍慕函謌撰ｼ・  get "up" => "rails/health#show", as: :rails_health_check
end


