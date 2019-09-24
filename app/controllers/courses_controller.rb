class CoursesController<ApplicationController
    before_action :require_user
    before_action :set_course, only: [:show, :edit, :update, :destroy]

    def new
        

    end
    
    def index
        @courses = Course.paginate(page: params[:page], per_page: 7)

    end

    def create
        @course = Course.new
        @course.save(:validate => false)
        redirect_to courses_step_path(@course, Course.steps.first)
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