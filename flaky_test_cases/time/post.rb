class Post
  attr_reader :published_at_unix_timestamp

  def initialize(title:)
    @title = title
    @published_at_unix_timestamp = nil
  end

  def publish!
    @published_at_unix_timestamp = Time.now.to_i
  end
end
