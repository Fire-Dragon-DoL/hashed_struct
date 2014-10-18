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

  it { expect(subject.name).to eq person_name }
  it { expect(subject.age).to eq person_age }
  it { expect(subject.email).to eq person_email }

  it "raises when trying to pass arguments in Struct#new fashion" do
    expect{
      person_class.new(person_name, person_age, person_email)
    }.to raise_error
  end

  it "raises when trying to pass ONE argument in Struct#new fashion" do
    klass = described_class.new(:message)

    expect{klass.new(Faker::Lorem.word)}.to raise_error
  end

end