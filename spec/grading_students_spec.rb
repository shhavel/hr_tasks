def gradingStudents(grades)
  grades.map do |grade|
    next grade if grade < 38
    rem = grade % 5
    next grade if rem < 3
    grade + (5 - rem)
  end
end

describe 'gradingStudents' do
  it { expect(gradingStudents([73, 67, 38, 33])).to eq([75, 67, 40, 33]) }
end
