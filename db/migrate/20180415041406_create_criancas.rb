class CreateCriancas < ActiveRecord::Migration[5.1]
  def change
    create_table :criancas do |t|
      t.string :Nome
      t.string :Pai
      t.string :Mae
      t.string :Responavel
      t.date :Nascimento
      t.string :Turma
      t.string :Endereco
      t.string :Telefone
      t.string :Roupa
      t.string :Calcado
      t.boolean :Saude
      t.string :Medicamento
      t.string :Observacao

      t.timestamps
    end
  end
end
