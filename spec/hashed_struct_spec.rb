require 'spec_helper'

RSpec.describe HashedStruct do
  let!(:person_name) { Faker::Name.name }
  let!(:person_age) { 30 }
  let!(:person_email) { Faker::Internet.email}
  let!(:person_class) { described_class.new(:name, :age, :email) }

  subject do
    person_class.new(
      name: person_name,
      age: person_age,
      email: person_email
    )
  end

  it "has a version number" do
    expect(described_class::VERSION).not_to be nil
  end

  it "access to members set through initialize", focus: true do
    expect(subject.name).to eq person_name
  end

end