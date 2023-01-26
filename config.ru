# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

# use Rack::JSONBodyParser

run Rails.application
Rails.application.load_server



##for bicycles.js
# useEffect(() => {
#     fetchProductions()
#   },[])

#   const fetchProductions = () => {
#     fetch('/productions')
#     .then(res => {
#       if(res.ok){
#         res.json().then(setProductions)
#       }else {
#         res.json().then(data => setErrors(data.error))
#       }
#     })
#   }