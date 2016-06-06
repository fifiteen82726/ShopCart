require 'grape'
require 'grape-swagger'

module CuteV1 
	module Rule
		module Entities	


		end


		class API < Grape::API
			helpers do
				def smile(say)
					return say
				end
			end
			
			desc 'Get Smile'
			get 'info/smile.json' do
			{
				:smail => {
					:say => smile(":)")  
					# 使用上面的 helpers 就像是view一樣可以用
				}
			}
			end
		end

		#describe 
		

		# desc 'OnionOrder' do 
		# 	success Entities::Order
		# 	#等等補充
		# end

		
	end

	class GrapeAPI <Grape::API
			before do 
				#因為要讓所有人都可以用,要把 CSRF關掉
				header['Access-control-Allow-Origin'] = header['Access-Control-Request-Method']='*'

			end

		end
end

