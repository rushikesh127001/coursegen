class CourseController<ApplicationController
    before_action :require_user

    def new
        @course=Course.new

    end
    
    def index
        @courses = Course.paginate(page: params[:page], per_page: 7)

    end

    def create
        @course = Course.new(course_params)

    end    
    
    private
    def article_params
        params.require(:article).permit()
      end

end    