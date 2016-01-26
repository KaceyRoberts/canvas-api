module Canvas
  class API
    def assignments(course_id:, params: {})
      get_collection __method__, ids: { course_id: course_id }, params: params
    end

    def user_assignments(user_id:, course_id, params: {})
      get_collection __method__, ids: {user_id: user_id, course_id: course_id}, params: params
    end

  end
end