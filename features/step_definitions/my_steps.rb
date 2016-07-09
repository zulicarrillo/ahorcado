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

Then(/^quiero ver que la letra ingresada sea "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^Introduzco "(.*?)" en el campo "(.*?)"$/) do |campo, valor|
   fill_in(campo, :with => valor)
end

When(/^presiono el boton "(.*?)"$/) do |arg1|
  click_button(name)
end

Then(/^quiero ver la "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end



