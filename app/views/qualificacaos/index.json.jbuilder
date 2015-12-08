json.array!(@qualificacaos) do |qualificacao|
  json.extract! qualificacao, :id, :comentario, :nota, :usuario_id, :academia_id
  json.url qualificacao_url(qualificacao, format: :json)
end
