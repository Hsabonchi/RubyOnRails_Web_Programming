class Zipper
   @@zippedUp=false
   def initialize( height, width )
    @height = height
    @width = width
   end

   # accessor methods
   def height
    @height
   end

   def width
    @width
   end

   # other methods
   def zipup
    @zippedUp = true
   end

   def zipdown
    @zippedUp = false
   end

   def to_s
    " height: #{@height}- width: #{@width}"
   end
 end
 
 
 class Jacket
  def initialize (acolor,asize,height, width )
   
    @color=acolor
    @size=asize 
     @z=Zipper.new(height, width)
   end
  
    def open
        @@zippedUp=false
        end


     def close 
         @@zippedUp=true
         end
         
    # accessor methods
         def color
           @color
         end
         
         def size
           @size
         end
         
        def to_s
        "color: #{@color} - size: #{@size}  #{@z}"
         end
 
 end
 
 ja=Jacket.new("red",10,30,32)
 puts ja
    