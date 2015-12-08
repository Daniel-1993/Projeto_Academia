json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :telefone, :email, :senha
  json.url usuario_url(usuario, format: :json)
end
