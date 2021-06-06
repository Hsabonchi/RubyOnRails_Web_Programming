
class Vehicle
   def initialize  (amake, amodel, aengine ,aprice )
                   @make=amake
                   @model=amodel
                   @engine=aengine
                   @price=aprice
                      end

                # accessor methods
				        def make 
				        @amake
				        end
				
				
			         def model
                 @model
                  end	
				
				
				        def engine
                 @engine
                 end	
				
				      def price
				       @price
				         end
				
				#mutator  method
				
				 def make=(value)
				@amake=value
				end
				
				def model=(value)
               @model=value
                end	
				
				
				def engine=(value)
               @engine=value
                end	
				
				def price=(value)
				@price=value
				end
				
				# provide a string representation
              def to_s
          " A#{@price} #{@make} #{@model} with #{@engine} engine\n"
				end
end

#  CarDealer
    class CarDealer 
	      #GlobalVariable
           @@totalCarSold=0
           @@totalSale=0

              def sellCar(make, model, engine, price )
			         @@totalSale+=1
              	 @@totalCarSold+=price 
              	Vehicle.new(make, model, engine, price )
               
			        end
           
              def sellTesla(amodel,aprice)
                @@totalCarSold+=aprice 
                @@totalSale+=1

                if (amodel=='Modelx')
                Modelx (aprice)
                end
                end

  
            # accessor methods

             def self.totalSale
               @@totalSale
             end


             def self.totalCarSold
                @@totalCarSold
             end

            #mutator  method
            def self.totalSale=(value)
               @@totalSale=value
             end


            def self.totalCarSold=(value)
               @@totalCarSold=value
             end

                

             def initialize  ( )
	         end

          def to_s
"A dealer having sold #{@@totalSale} car with revenue of $#{@@totalCarSold}sofar!"
				end
end

class Modelx < CarDealer
        def initialize  (aprice)

                   @make='Tesla'
                   @model='Modelx'
                   @engine='electric'
                   @price=aprice
                   end
  #provide a string representation
      def to_s
    " A#{@price}  #{@make} #{@model} with #{@engine} engine\n"
        end



end






d = CarDealer.new()


dodge = d.sellCar( :Dodge, :Dart, "gas", 19500 )
# arguments are make, model, engine and price
puts( "here is your dart!!" )
puts dodge
puts( "here is your CarDealer!!" )
puts d
volt = d.sellCar( :Chevy, :Volt, "electric", 35000 )
puts( "here is your volt!" )
puts volt
puts( "here is your CarDealer!" )
puts d

modelx = d.sellTesla( :ModelX, 89500 )
puts( "here is your modelX! " )
puts modelx
puts( "here is your CarDealer!" )
puts d