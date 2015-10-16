module Canvas
  class API
    def account(account_id:, params: {})
      get_single __method__, ids: { account_id: account_id }, params: params
    end
  end
end