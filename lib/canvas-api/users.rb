module Canvas
  class API
    def users(account_id:, params: {})
      get_collection __method__, ids: { account_id: account_id }, params: params
    end
  end
end