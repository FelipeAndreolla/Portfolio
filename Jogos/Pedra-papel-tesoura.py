'''
Pedra Papel Tesoura
-------------------------------------------------------------
'''


import random
import os
import re


def status_do_jodo():
  valid_responses = ['sim', 'não']
  while True:
      try:
          response = input('Você quer jogar de novo? (Sim ou Não)')
          if response.lower() not in valid_responses:
              raise ValueError('Apenas sim ou não')

          if response.lower() == 'sim':
              return True
          else:
              os.system('cls' if os.name == 'nt' else 'clear')
              print('Obrigado por jogar')
              exit()

      except ValueError as err:
          print(err)


def jogo():
   play = True
   while play:
       os.system('cls' if os.name == 'nt' else 'clear')
       print('')
       print('Pedra, papel ou tesoura?')

       user_choice = input('Escolha sua opção'
                           ' [1]Pedra, [2]Papel, ou [3]Tesoura: ')

       if not re.match("[123]", user_choice):
           print('Por favor escolha um número válido:')
           print('[1]Pedra, [2]Papel, ou [3]Tesoura')
           continue

       print(f'Sua escolha: {user_choice}')

       choices = ['1', '2', '3']
       opp_choice = random.choice(choices)

       print(f'Eu escolhi: {opp_choice}')

       if opp_choice == user_choice.upper():
           print('Empate!')
           play = status_do_jodo()
       elif opp_choice == '1' and user_choice.upper() == '3':
           print('Pedra ganha de tesoura, venci!')
           play = status_do_jodo()
       elif opp_choice == '3' and user_choice.upper() == '2':
           print('Tesoura ganha de papel, venci!')
           play = status_do_jodo()
       elif opp_choice == '2' and user_choice.upper() == '1':
           print('Papel ganha de pedra, venci!')
           play = status_do_jodo()
       else:
           print('Você venceu!\n')
           play = status_do_jodo()


if __name__ == '__main__':
   jogo()