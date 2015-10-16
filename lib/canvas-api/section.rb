module Canvas
  class API
    def section(course_id:, section_id:, params: {})
      get_single __method__, ids: { course_id: course_id, section_id: section_id }, params: params
    end

    def update_section(section_id:, body: {}, params: {})
      put_single __method__, ids: { section_id: section_id }, body: body, params: params
    end
  end
end
