Rails.application.routes.draw do
  root 'surveys#index'

  post 'survey' => 'surveys#process_survey'

  get 'surveys/result'

end
