class TrafficSignal
  
     def initialize (red,yellow,green)
         @red=red
         @yellow=yellow
         @green=green
         end
     # accessors
      def red
          @red
          end
   
       def yellow
          @yellow
          end

      def green
         @green
         end 
 
          def cycle() 
print  "#{@red} seconds of red \n"+
         "#{@yellow} seconds of yellow \n"+
         "#{@green} seconds of green \n"
  
          end
          end # End Of TrafficSignal

class RightTurnSignal < TrafficSignal
      def initialize (turn,red,yellow,green)
                    @turn =turn 
              super(red,yellow,green) 
                        
                        end

                    # accessor
                     def turn
                        @turn
                        end

 def cycle() 
 super
print  "#{@turn} seconds of turn \n"
  
  
          end
           
             end # end of class RightTurnSignal

longgreen = TrafficSignal.new(50, 10, 20)

longgreen.cycle()
puts

rightTurn=RightTurnSignal.new(70,50, 10, 20)
rightTurn.cycle()