class StudentController < ApplicationController
  before_action :require_login
  def index
  end

  def new
   @student = Student.new
  end

  def create
     @student = Student.new(student_params)
      if @student.save
        redirect_to @student, notice: 'student was successfully created.' 
      else
       render action: :new 
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end
  def student_params
   params.require(:student).permit(:first_name, :middle_name,:last_name,
          :dob,:gender,:sibling,:s_first_name,:s_middle_name,:s_last_name,:f_first_name, 
          :s_dob,:f_middle_name,:f_last_name,:f_dob,:m_first_name,:m_last_name,
          :m_dob,:ref1_name,:ref1_relation,:ref2_name,:ref2_relation)
  end
end
