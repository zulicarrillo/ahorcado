Given(/^Estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^quiero ver el mensaje "(.*?)"$/) do |arg1|
 	last_response.body.should =~ /#{arg1}/m
end

Then(/^quiero ver la cantidad de letras de la palabra secreta sea "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^quiero un texto que diga "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Then(/^quiero ver que la palabra ingresada sea "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end


