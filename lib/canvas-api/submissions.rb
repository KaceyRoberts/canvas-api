module Canvas
  class API

    def submissions(section_id:, assignment_id:, params: {})
      get_collection __method__, ids: { section_id: section_id, assignment_id: assignment_id }, params: params
    end

  end
end