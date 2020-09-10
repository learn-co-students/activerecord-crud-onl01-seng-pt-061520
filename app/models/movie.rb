class Movie < ActiveRecord::Base
  it 'can be instantiated and then saved' do
        can_be_instantiated_and_then_saved
        expect(Movie.find_by(title: "This is a title.").title).to eq("This is a title.")
      end

      it 'can be created with a hash of attributes' do
        movie = can_be_created_with_a_hash_of_attributes
        expect(Movie.find_by(attributes)).to eq(movie)
      end

      it 'can be created in a block when no args are passed' do
        movie = can_be_created_in_a_block

        expect(movie.title).to eq("Home Alone")
        expect(movie.release_date).to eq(1990)
      end

      it 'can be created in a block' do
        args = { title: "The Room", release_date: 2003 }
        movie = can_be_created_in_a_block(args)
