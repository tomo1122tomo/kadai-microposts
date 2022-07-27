class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.references :user, null: false, foreign_key: true
      # 外部キーとしてusersテーブルを参照するという指定
      t.references :follow, null: false, foreign_key: { to_table: :users }

      t.timestamps
      # ペアで重複するものが保存されないようにするデータベースの設定
      t.index [:user_id, :follow_id], unique: true
    end
  end
end