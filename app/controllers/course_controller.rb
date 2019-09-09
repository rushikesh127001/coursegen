class CourseController<ApplicationController

    def new
        @course=Course.new

    end
    
    def index
        @courses = Course.paginate(page: params[:page], per_page: 7)

    end    

end    