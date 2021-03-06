module  Subject

   def initialize
      @observers = []
   end

   def addObserver (observer)
      @observers.push(observer)
   end

   def removeObserver (observer)
      @observers.delete(observer)
   end

   def notifyObservers 
      @observers.each do |observer|
         observer.update(self)
      end
   end


end
