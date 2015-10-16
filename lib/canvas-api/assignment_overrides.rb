module Canvas
  class API
    def assignment_overrides(course_id:, assignment_id:, params: {})
      get_collection __method__, ids: { course_id: course_id, assignment_id: assignment_id }, params: params
    end

    # Usage:
    #   ap c.create_assignment_override(course_id: 40,
    #                                   assignment_id: 7,
    #                                   body: {
    #                                       assignment_override: {
    #                                           student_ids: [3336],
    #                                           course_section_id: 935,
    #                                           lock_at: Time.now.utc.iso8601,
    #                                           unlock_at: Time.now.utc.iso8601,
    #                                           due_at: nil
    #                                       }})
    def create_assignment_override(course_id:, assignment_id:, body: {}, params: {})
      post_single __method__, ids: { course_id: course_id, assignment_id: assignment_id }, body: body, params: params
    end

    # Usage:
    #   ap c.update_assignment_override course_id: 40, assignment_id: 7, override_id: 24, body: {
    #                                                    assignment_override: {
    #                                                        student_ids: [3336, 3371],
    #                                                        course_section_id: 935,
    #                                                        lock_at: Time.now.utc.iso8601,
    #                                                        unlock_at: Time.now.utc.iso8601,
    #                                                        due_at: nil
    #                                                    }
    #                                                }
    def update_assignment_override(course_id:, assignment_id:, override_id:, body: {}, params: {})
      put_single __method__, ids: { course_id: course_id, assignment_id: assignment_id, override_id: override_id }, body: body, params: params
    end

    def delete_assignment_override(course_id:, assignment_id:, override_id:, params: {})
      delete_single __method__, ids: { course_id: course_id, assignment_id: assignment_id, override_id: override_id }, params: params
    end
  end
end