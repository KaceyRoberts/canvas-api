module Canvas
  class API
    def assignments(course_id:, params: {})
      get_collection __method__, ids: { course_id: course_id }, params: params
    end
  end
end