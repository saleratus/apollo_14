require 'rails_helper'

describe 'ASTRONAUTS page' do


  it 'shows astronaut listing' do
    astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 32, job: 'Commander')
    astro_2 = Astronaut.create(name: 'Buzz Aldrin', age: 38, job: 'First Mate')
    astro_3 = Astronaut.create(name: 'Roger Grisholm', age: 35, job: 'Navigator')
    visit '/astronauts'
    expect(page).to have_content('Armstrong')
    expect(page).to have_content('Aldrin')
    expect(page).to have_content('Grisholm')
    expect(page).to have_content('32')
    expect(page).to have_content('38')
    expect(page).to have_content('35')
    expect(page).to have_content('Commander')
    expect(page).to have_content('First Mate')
    expect(page).to have_content('Navigator')
  end

  it 'shows average age' do
    astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 32, job: 'Commander')
    astro_2 = Astronaut.create(name: 'Buzz Aldrin', age: 36, job: 'First Mate')
    astro_3 = Astronaut.create(name: 'Roger Grisholm', age: 35, job: 'Navigator')
    visit '/astronauts'
    expect(page).to have_content('Average Age: 34')
  end

  it 'shows alphabetical missions' do
    astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 32, job: 'Commander')
    astro_2 = Astronaut.create(name: 'Buzz Aldrin', age: 36, job: 'First Mate')
    astro_3 = Astronaut.create(name: 'Roger Grisholm', age: 35, job: 'Navigator')

    mission_1 = Mission.create(title: 'Apollo 13', time_in_space: 456)
    mission_2 = Mission.create(title: 'Apollo 16', time_in_space: 654)
    mission_3 = Mission.create(title: 'Apollo 18', time_in_space: 789)

    
  end

end
