FactoryBot.define do
  factory :movie do
    title         { Faker::Lorem.sentence }
    memo          { Faker::Lorem.sentence }
    actor         { Faker::Name.name}
    director      { Faker::Name.name }
    genre_id      { 2 }
    evaluation_id { 2 }
    association :user, strategy: :create

    after(:build) do |movie|
      movie.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
