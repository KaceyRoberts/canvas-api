module Canvas
  class API
    def courses(params: {})
      get_collection __method__, params: params
    end
  end
end