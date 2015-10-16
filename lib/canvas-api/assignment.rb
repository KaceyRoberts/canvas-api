module Canvas
  class API
    def assignment(course_id:, content_id:, params: {})
      get_single __method__, ids: { course_id: course_id, content_id: content_id }, params: params
    end

    def discussion(course_id:, content_id:, params: {})
      get_single 'assignment', ids: { course_id: course_id, content_id: content_id }, params: params
    end
  end
end