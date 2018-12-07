require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  it 'calculates Average Age' do
    astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 32, job: 'Commander')
    book_2 = Astronaut.create(name: 'Buzz Aldrin', age: 36, job: 'First Mate')
    book_3 = Astronaut.create(name: 'Roger Grisholm', age: 35, job: 'Navigator')
    expect(Astronaut.all.average_age.to_i).to eq(34)
  end

end
