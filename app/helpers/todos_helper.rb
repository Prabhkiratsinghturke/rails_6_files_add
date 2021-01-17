module TodosHelper
  def allPosts
    puts"=====todos helper====================="
    return Post.all.map{|n| n.user.email}
  end
end
