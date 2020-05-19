module Conekta
  class PayoutMethod < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    def _url
      ensure_id

      self.payee._url + self.class._url + "/" + id
    end

    def delete
      self.delete_member('payee','payout_methods')
    end
  end
end
