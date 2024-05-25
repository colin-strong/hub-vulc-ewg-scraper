#!/usr/bin/env ruby

require 'mechanize'

agent = Mechanize.new
uri = "https://covapp.vancouver.ca/councilMeetingPublic/CouncilMeetings.aspx"

fields = {
  "__EVENTTARGET" => "wt116$OutSystemsUIWeb_wt26$block$wtContent$wtMainContent$OutSystemsUIWeb_wt37$block$wtContent$OutSystemsUIWeb_wtNavigationBarCouncil$block$wtContent$OutSystemsUIWeb_wt82$block$wtTitle$wt84",
  "__OSVSTATE" => "NXp12HrIuGdKKXcxyXjUjPmixFxUVR9NkkFFjO0edhOmtiv6K1+hRA7zHkRW9Dh2yIe5DUf55ZwRtYp5g3TayFJmJJ0na1+zaUydFoJ2KnpbjkzRHtjcnQf2OZOE4f0F7ASkNJFSbv4Q/kvPjzq5/TXkc9mosNlhhoUeSc1Qd8xJx6pQJdcMsDbBXGV99Jj1CfnsD3VnQPVGYR8XKecYztc1rQp//bnM2lepHJ7Jr3G2UOLJsqqkuj9WithXrjufNkVB57M4SAHAUSbdlRpDq/JoIw8YS7Kiwv7dml2S4bZT6Yn9FcZLbA7zg+IOghbTvojCtOe1QMFhWcVyhUE6nH5A9yXAQDnbwa6RkYw1wUCckoaeGeICJP+H7qLqH1ckoCYcS1YNPeL8fpxAyyL2EzA5zOG3hGGG34S2UmbmwQQRGdIj4mB+8iXpGsvheYPHYNFwX/nOXXb8WfB/Ri1UDDXsCqmIa4n0iLS4a2FArgV5uHQHcyvd+5FwLeAPaiSTO9XS7Ips/s8xeia+Gx51MgelK6m1ZSjFuwcGUXJFNv4B606VNNptQ3De+cW277Kelk9Bkq+LzJvKg6Bv9itnB89fY7BbiIN91sMGuRTKErvmR7ZXufNAqNlZsTIsIKXbF4iktv6+DVW1g5QwT2+JmstVhIa39VfkIqP46Bx1Xcr0/77Z1s/Uj447fTuFrlZUD3u+S9/HcV3jqmC/FVqQkEMbRbetop40pgjPbCKMJGuPsfgdeSCBTCg+WpLuAMxI+/S3wGUVZQA+F8hjJtD6zQ/ztHQ2n0QF6xCUnSn8m2KVaYyh3V74Ooftqjaqk4nQliT/xnLPjTh44N11DAa3Jdws31TRI6g/kLt43li+vJEvncy5aQRo/dHZyRCjkesRr6Iz0XOv5KzA9D1LnbBNxWkXcVq6ac+NmaUFfmxtVVrdJ4eLPcai9eghoZvTxD8YgpQu9cmp2u+vkvQEZNOGYlMcmzY5ThJ4GpCvPE5ZfobauXEFyWiQdarg2xXxh96mDYX2R2nuOhJ0gGC5oSCfg8p5kk3qHUIxi0SWU5/npr/yZA6JX4C9FJgYvJOW5Hmaq7le7/W66LyVjnbZcFmEXN7fuDM5k8yWF4xJLsHyW9tRzcVyBFD0s5Tyqu+w3Qilx5f3VBQcOM1Po+2San5JitNBadOJOf/awIUQDGcRIruv8Qk4Yp/OfvWdqRtr43tsTmRx0Nqwm3/XGmNlsPJXc27Uow72umuUSWp3dWwqHxWFzmf9wzD5AV4sY0AOjNH4SMwzK3jSKL09F0kRnUBueGiV/mUJ1MpAhKVWl+LQoLnAcbhe5+ru1AUHc7VmKuYCnIB0zQ7A17ZxbzRFbkF/xMqBU6bdqWwO5yT49uywnlPo2omAp1zquHeYY23hg5JN1VXWmu9+hey++MGkxeYZjKkb8WJGlrbY+Dpl2flmmvavJVVW3tYQf1p7KM8/k+8AnRamqPPvFgCa9nCqd7quXD2wC+FynQEvkD7K5Jyn0ijDLhIJip/fougC4z0mmB9R995IVNYoanvsDt43ezFE2Q",
  "__VIEWSTATEGENERATOR" => "37C0BBE5",
  "__AJAX" => "1111,1305,wt116_OutSystemsUIWeb_wt26_block_wtContent_wtMainContent_OutSystemsUIWeb_wt37_block_wtContent_OutSystemsUIWeb_wtNavigationBarCouncil_block_wtContent_OutSystemsUIWeb_wt82_block_wtTitle_wt84,256,214,0,0,305,273,",
}

headers = {
"Host" => "covapp.vancouver.ca",
"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:125.0) Gecko/20100101 Firefox/125.0",
"Accept" => "text/plain, */*; q=0.01",
"Accept-Language" => "en-US,en;q=0.5",
"Accept-Encoding" => "gzip, deflate, br",
"Content-Type" => "application/x-www-form-urlencoded; charset=UTF-8",
"X-Requested-With" => "XMLHttpRequest",
"Content-Length" => "5656",
"Origin" => "https://covapp.vancouver.ca",
"Connection" => "keep-alive",
"Referer" => "https://covapp.vancouver.ca/councilMeetingPublic/CouncilMeetings.aspx?_ts=1716670692418",
"Cookie" => "ASP.NET_SessionId=backcf0ypqfag0xt5npo0mho; osVisitor=fed1b9de-7796-40ed-8f1f-3610f358b387; pageLoadedFromBrowserCache=true; DEVICE_OS=osx; DEVICES_TYPE=desktop-small; DEVICE_BROWSER=firefox; DEVICE_ORIENTATION=; optimizelyEndUserId=oeu1716307561559r0.476993594927159; optimizelySegments=%7B%22672010687%22%3A%22false%22%2C%22672980469%22%3A%22ff%22%2C%22681500307%22%3A%22referral%22%7D; optimizelyBuckets=%7B%7D; osVisit=6c5f1767-cb26-46e1-9699-cfc7422b4176; RT=s=1716672933602&r=https%3A%2F%2Fcovapp.vancouver.ca%2FcouncilMeetingPublic%2FCouncilMeetings.aspx",
"Sec-Fetch-Dest" => "empty",
"Sec-Fetch-Mode" => "cors",
"Sec-Fetch-Site" => "same-origin",
}

page = agent.get(uri)
form = page.forms.first

# fields.each do |field, value|
#   form.add_field!(field, value)
# end

submit_button = form.submits.find { |s| s.name = "wt116$OutSystemsUIWeb_wt26$block$wtContent$wtMainContent$wt4" }

f = form.submit(submit_button, headers)

puts f.parser