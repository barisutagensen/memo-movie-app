require 'rails_helper'

RSpec.describe Movie, type: :model do
  before do
    @movie = FactoryBot.build(:movie)
  end

  describe '映画情報投稿' do
    context '映画情報が投稿できる場合' do
      it 'titleとmemoとactorとdirectorとgenre_idとevaluation_idとimageが存在していれば保存できる' do
        expect(@movie).to be_valid
      end
    end

    context '映画情報が投稿できない場合' do
      it 'titleが空では保存できない' do
        @movie.title = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Title can't be blank")
      end

      it 'imageが空では保存できない' do
        @movie.image = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Image can't be blank")
      end

      it 'quote_sourceが空では保存できない' do
        @movie.quote_source = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Quote source can't be blank")
      end

      it 'excerpt_site_nameが空では保存できない' do
        @movie.excerpt_site_name = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Excerpt site name can't be blank")
      end

      it 'memoが空では保存できない' do
        @movie.memo = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Memo can't be blank")
      end

      it 'actorが空では保存できない' do
        @movie.actor = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Actor can't be blank")
      end

      it 'directorが空では保存できない' do
        @movie.director = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Director can't be blank")
      end

      it 'viewing_timingが空では保存できない' do
        @movie.viewing_timing = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Viewing timing can't be blank")
      end

      it 'genre_idが空では保存できない' do
        @movie.genre_id = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Genre can't be blank")
      end

      it 'genre_idが--では保存できない' do
        @movie.genre_id = 1
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Genre can't be blank")
      end

      it 'evaluation_idが空では保存できない' do
        @movie.evaluation_id = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Evaluation can't be blank")
      end

      it 'evaluation_idが--では保存できない' do
        @movie.evaluation_id = 1
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Evaluation can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @movie.user_id = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include("User can't be blank")
      end
    end
  end
end
