class CourseController<ApplicationController
    include Wicked::Wizard
    steps :identity, :co, :po
    before_action :require_user
    before_action :set_course, only: [:show, :edit, :update, :destroy]

    def new
        @course = Course.new
        @course.save(:validate => false)
        redirect_to course_step_path(@course, Course.steps.first)
        

    end 

    def show
        @user = current_user
        case step
        when :identity
            @course = @course.identity
        end
    render_wizard
  end

    
    def index
        @courses = Course.paginate(page: params[:page], per_page: 7)

    end

    def create
        @course = Course.new
        @course.save(:validate => false)
        redirect_to course_step_path(@course, Course.steps.first)
    end
    
    def destroy
    end  

    def edit
    end  
    
    private
    def article_params
        params.require(:article).permit()
    end

    def set_course
      @course = Course.find(params[:id])
    end

     
       

end   