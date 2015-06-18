KimonoApp::Application.routes.draw do
  get 'hello' => 'kimonolist#hello'
  get 'bye' => 'kimonolist#bye'
end
