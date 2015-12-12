FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    telefone "MyString"
    email "MyString"
    senha "MyString"
  end

end

FactoryGirl.define do
  factory :academia_treinamento do
    nome "MyString"
    local "MyString"
  end

end

FactoryGirl.define do
  factory :professor do
    nome "MyString"
    telefone "MyString"
  end

end

FactoryGirl.define do
  factory :qualificacao do
    comentario "MyString"
    nota 10
    usuario nil
  end

end