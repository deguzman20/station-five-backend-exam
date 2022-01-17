class MessageController < ApplicationController
  def send_message
    parameters = JSON.parse(request.body.read).transform_keys(&:to_sym)

    if parameters[:conversation_id].present? && parameters[:message].present?
      context_tbl = ContextTable.last
      word = parameters[:message].split(",")[0]
      has_word_exist = ContextTable.all.select("word").find_by_word(word).present?

      if word.length >= 1 && has_word_exist
        req_response = ContextTable.find_by_word(word)

        if req_response.present?
          render json: {
            converstion_id: parameters[:conversation_id],
            response: req_response.message
          }          
        end
      else
        render json: context_tbl.message.to_json
      end
    else
      render json: 'There is something wrong with the request data format'.to_json
    end
  end
end
