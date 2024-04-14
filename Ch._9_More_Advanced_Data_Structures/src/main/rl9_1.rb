class Tree
  attr_accessor :left
  attr_accessor :right
  attr_accessor :data

  def initialize(x=nil)
    @left = nil
    @right = nil
    @data = x
  end

  def insert(x)
    list = []
    if @data == nil
      @data = x
    elsif @left == nil
      @left = Tree.new(x)
    elsif @right == nil
      @right = Tree.new(x)
    else
      list << @left
      list << @right
      loop do                       # в list вталкиваются не пустые узлы
                                    # дерева, цикл заканчивается нахождением
                                    # первого пустого листа
        node = list.shift
        if node.left == nil
          node.insert(x)
           break 
        else
          list << node.left
        end
        if node.right == nil
          node.insert(x)
          break
        else
          list << node.right
        end
      end 
    end
  end

  def traverse()                                # обход бинарного дерева
    list = []
    yield @data
    list << @left if @left != nil
    list << @right if @right != nil
    loop do
      break if list.empty?
      node = list.shift
      yield node.data
      list << node.left if node.left != nil
      list << node.right if node.right != nil
    end 
  end
end
