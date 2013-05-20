require 'spec_helper'

describe Student do
  
	def valid_attributes
	  {
	    :name => 'Student Name',
	    :email => 'name@foo.com',
	    :registry => 123456,
	    :birthdate => Date.today
	  }
  end

  it 'should create student' do
    lambda do
     student = Student.new(valid_attributes)
     student.save
    end.should change(Student,:count).by(1)
  end

  [:name,:email,:registry,:birthdate].each do |field|
    it "validate presence of #{field}" do
      lambda do
        student = Student.new(valid_attributes.except(field))
        student.save
      end.should_not change(Student,:count)
    end
  end

  describe 'relationships' do
    let(:student) { Factory.create(:basic_student) }

    it 'should have courses' do
    	pending "was not implemented yet"
    end

  end

end
