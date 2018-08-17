require 'rake'
require 'benchmark'
require_relative 'sorting_algorithms'

namespace :benchmark do
  desc 'Compare algorithm performance'

  task :compare do

    array = (1..5000).map { rand }

    Benchmark.bm(50) do |x|
      x.report('bubble_sort') { array.bubble_sort }
      x.report('insertion_sort')  { array.insertion_sort  }
      x.report('selection_sort')  { array.selection_sort  }
    end
  end
end
