Dado('eu tenho {int} laranjas.') do |valor1|
  @laranjas = valor1
end

Quando('eu como {int} laranjas.') do |valor2|
  @poscomer = @laranjas - valor2
end

Quando('eu compro {int} laranjas.') do |valor3|
  @poscompra = @laranjas + valor3
end

Então('as larajas que sobraram devem ser {int}.') do |sobradas|
  expect(@poscomer).to eq sobradas
end

Então('o total de laranjas deve ser {int}.') do |compradas|
  expect(@poscompra).to eq compradas
end