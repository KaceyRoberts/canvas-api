module Canvas
  class API
    def course(course_id:, params: {})
      get_single __method__, ids: { course_id: course_id }, params: params
    end
  end
end