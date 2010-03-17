module NavigationHelper
  def children
    folder = File.dirname(current_page) 
    sub_pages = `ls src/pages#{File.dirname(current_page)}`.split(' ').select{|s| s =~ /\.haml$/}
    sub_pages.map do |file|
      file = file.sub(/\.haml$/,'')
      [
        File.basename(file),
        "#{folder}/#{file}"
      ]
    end
  end
end