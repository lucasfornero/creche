require 'test_helper'

class CriancasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crianca = criancas(:one)
  end

  test "should get index" do
    get criancas_url
    assert_response :success
  end

  test "should get new" do
    get new_crianca_url
    assert_response :success
  end

  test "should create crianca" do
    assert_difference('Crianca.count') do
      post criancas_url, params: { crianca: { Calcado: @crianca.Calcado, Endereco: @crianca.Endereco, Mae: @crianca.Mae, Medicamento: @crianca.Medicamento, Nascimento: @crianca.Nascimento, Nome: @crianca.Nome, Pai: @crianca.Pai, Responavel: @crianca.Responavel, Roupa: @crianca.Roupa, Saude: @crianca.Saude, Telefone: @crianca.Telefone, Turma: @crianca.Turma } }
    end

    assert_redirected_to crianca_url(Crianca.last)
  end

  test "should show crianca" do
    get crianca_url(@crianca)
    assert_response :success
  end

  test "should get edit" do
    get edit_crianca_url(@crianca)
    assert_response :success
  end

  test "should update crianca" do
    patch crianca_url(@crianca), params: { crianca: { Calcado: @crianca.Calcado, Endereco: @crianca.Endereco, Mae: @crianca.Mae, Medicamento: @crianca.Medicamento, Nascimento: @crianca.Nascimento, Nome: @crianca.Nome, Pai: @crianca.Pai, Responavel: @crianca.Responavel, Roupa: @crianca.Roupa, Saude: @crianca.Saude, Telefone: @crianca.Telefone, Turma: @crianca.Turma } }
    assert_redirected_to crianca_url(@crianca)
  end

  test "should destroy crianca" do
    assert_difference('Crianca.count', -1) do
      delete crianca_url(@crianca)
    end

    assert_redirected_to criancas_url
  end
end
