from viberbot import BotConfiguration, Api
from viberbot.api.messages import TextMessage

bot_configuration = BotConfiguration(
    name='Mihail',
    avatar='http://sun9-29.userapi.com/c824201/v824201969/173425/UZNGRozhtic.jpg?ava=1',
    auth_token='4a1218ec19e7d382-bc52008d33eea8c2-e819c1e1cd8babcd'
)

viber = Api(bot_configuration)
# viber.send_messages(viber.get_online([1]),TextMessage(text="thanks for subscribing!"))
# print(viber.get_account_info())
viber.set_webhook("https://blooming-dusk-83109.herokuapp.com/")


