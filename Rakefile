task default: 'cv.html'

desc 'Generate HTML CV'
file 'cv.html' => 'cv.md' do |t|
  sh "./render.rb #{t.prerequisites.first} > #{t.name}"
end
