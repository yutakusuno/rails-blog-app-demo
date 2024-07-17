module PostsHelper
  def format_post_body(val)
    truncate(val, length: 10)
  end
end
