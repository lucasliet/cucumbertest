Quando('eu multiplico minhas {int} pelo {int}.') do |laranja, valor|
  @multiplacacao = laranja * valor
end

Então('eu vejo qual {int} da multiplacação.') do |resultado|
  expect(@multiplacacao).to eq resultado
end