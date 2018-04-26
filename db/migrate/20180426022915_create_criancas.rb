class CreateCriancas < ActiveRecord::Migration[5.1]
  def change
    create_table :criancas do |t|
      t.string :nome
      t.date :nascimento
      t.references :turma, foreign_key: true
      t.string :mae
      t.string :pai
      t.string :responsavel
      t.string :telefone
      t.string :endereco
      t.string :roupa
      t.references :calcado, foreign_key: true
      t.boolean :saude
      t.string :medicamento
      t.text :observacao

      t.timestamps
    end
  end
end
