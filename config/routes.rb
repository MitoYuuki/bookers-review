Rails.application.routes.draw do
  # トップページ
  root "homes#top"

  # Books の CRUD 用
  resources :books

  # Rails のヘルスチェック（自動生成）
  get "up" => "rails/health#show", as: :rails_health_check
end