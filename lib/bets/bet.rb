

module Bets

   class Bet

      attr_reader :betID
      attr_reader :desc
      attr_reader :name
      attr_reader :opt
      attr_reader :odd
      attr_reader :coins
      attr_reader :closed
      attr_reader :won

      def initialize (bID, desc, name, opt, odds, coins)
         @betID = bID
         @description = desc
         @punter = name
         @option = opt
         @odd = odds
         @coins = coins
         @closed = @won = false
      end

      ## Closes a bet, defining whether or not the bet was won.
      def closeBet (wonBet)
         @closed = true
         @won = wonBet
      end


      def toString
         value = @coins*@odd
         s = "Bet ID - #{@betID}\n"+
         "\"#{@description}\"\n"+
         "Option chosen: #{@option}\n"+
         "Odds for that option: #{@odd}\n"+
         "Coins: #{@coins}\n"

         if (!@closed)
            then s << "Potential gains: #{value}\n"
         else
            if (@won)
               then
                  s << "Won bet!\n"
                  s << "Coins won: #{value}\n"
            else s << "Lost bet..."
            end
         end
         s
      end

   end

end
