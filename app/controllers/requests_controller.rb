class RequestsController < ApplicationController


    protect_from_forgery with: :exception

  def create
      puts params.inspect

      @new_request = Request.create(
        fname: params[:request][:fname],
        lname: params[:request][:lname],
        email: params[:request][:email],
        reqtype: params[:request][:reqtype],
        phone: params[:request][:phone],
        fromdate: params[:request][:fromdate],
        todate: params[:request][:todate],
        content: params[:request][:content]
      )


      @from_email = params['request'][:email]
      @to_email = "4quinn@optonline.net"
      @email_subject = params['request'][:reqtype]
      @email_content = params['request'][:content]


      # set the 'from', 'subject' and 'to' addresses
      from = SendGrid::Email.new(email: @from_email)
      to = SendGrid::Email.new(email: @to_email)
      subject = @email_subject

      # set the content to send in the email
      content = SendGrid::Content.new(type: 'text/plain', value: @email_content)

      # set the mail attribute values
      mail = SendGrid::Mail.new(from, subject, to, content)
      puts "MAIL TO JSON", mail.to_json
      # pass in the sendgrid api key
      sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

      # send the email
      response = sg.client.mail._('send').post(request_body: mail.to_json)

      # display the response status code and body
      puts "STATUS CODE:", response.status_code
      puts "response.body:", response.body

      if response.status_code.to_i == 202
        redirect_to '/'
      else
        redirect_to '/requests/new'
      end
    end

    def index
      @requests = Request.all
      @all_requests = @requests.reverse
      @request = Request.new
    end

    def edit

      @message = "This is the form to edit an existing request."
      @request = Request.find(params[:id])

    end


    def update

      @request = Request.find(params[:id])
      @request.update({
        reqtype: params[:request][:reqtype],
        fromdate: params[:request][:fromdate],
        todate: params[:request][:todate]
      })

    end
end
