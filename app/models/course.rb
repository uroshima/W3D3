class Course < ApplicationRecord

  # has_many :users,
  #   primary_key: :id,
  #   foreign_key: :user_id,
  #   class_name: 'User'
  #

  has_many :enrollments,
  class_name: 'Enrollment',
  foreign_key: :course_id,
  primary_key: :id

  has_many :enrolled_students,
    through: :enrollments,
    source: :user


  belongs_to :prerequisite,
    class_name: 'Course',
    foreign_key: :prereq_id,
    primary_key: :id,
    optional: true

  belongs_to :instructor,
    class_name: 'User',
    foreign_key: :instructor_id,
    primary_key: :id
end
