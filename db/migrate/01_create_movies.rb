
class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |g|
      g.string :title
      g.integer :release_date
      g.string :director
      g.string :lead
      g.boolean :in_theaters
    end
  end
end