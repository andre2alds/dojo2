Quando(/^eu seleciono a tarefa$/) do
  LoginPage.new.menu.click
  LoginPage.new.tarefa_edita.click
  LoginPage.new.excluir.click
  LoginPage.new.acao_apagar.click
  click_link('Delete')
  #LoginPage.new.apagar.click
  

    


end

Então(/^a tarefa é apagada$/) do
  page.driver.browser.switch_to.alert.accept
end