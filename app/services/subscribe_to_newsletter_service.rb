class SubscribeToNewsletterService
  def initialize(user)
    @user = user
    @gibbon = Gibbon::Request.new(api_key: ENV['f1c6aeae37c400160e1b1052e6911174-us17'])
    @list_id = ENV['1ff0524188']
  end

  def call
    @gibbon.lists(@list_id).members.create(
      body: {
        email_address: @user.email,
        status: "subscribed",
        # merge_fields: {
        #   FNAME: @user.first_name,
        #   LNAME: @user.last_name
        # }
      }
    )
  end
end
