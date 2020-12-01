class CreateFibonaccis < ActiveRecord::Migration[5.2]
  def change
    create_table :fibonaccis do |t|
      t.integer :sequence
    end
  end
end
