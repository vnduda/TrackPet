# TrackPet :dog: :cat:
![Integração Contínua](https://travis-ci.org/vnduda/TrackPet.svg?branch=master)  
A integração contínua leva em consideração
- Testes de Unidade 
- Documentação (rdoc)
- Vulnerabilidades
- Detecção de Bugs
- Verificação de estilo

### Descrição do projeto TrackPet
Atualmente há uma grande dificuldade em divulgar animais desaparecidos, para quem perdeu ou para quem encontrou. Os mais usados são redes sociais e grupos em apps de conversação, que acabam não sendo muito eficazes devido os seguintes fatores, por exemplo: 
  - Mecanismos de pesquisa deficientes;
  - Informações descentralizadas (são diversos grupos em diversas redes sociais)

O intuito do sistema é criar um meio para conectar pessoas que perderam seus animais, com pessoas que encontraram animais perdidos.

### Componentes:
  Eduarda Vieira, João Victor Rocha, Ana Luisa Burjack, André Lopes

### Requisitos implementados:
-  **[RF02]** Como DONO DE UM ANIMAL, desejo CADASTRAR OS DADOS DO MEU ANIMAL PERDIDO, para que ALGUÉM POSSA RECONHECÊ-LO.   
-  **[RF03]** Como USUÁRIO, desejo CADASTRAR OS DADOS DO ANIMAL QUE EU ENCONTREI NO SISTEMA, para que ALGUÉM POSSA RECONHECÊ-LO.   
-  **[RF05]** Como DONO DE ANIMAL PERDIDO, desejo que TENHA UMA ABA PARA ANIMAIS ENCONTRADOS, para tornar a busca filtrada apenas para animais que foram encontrados por outros usuários.    
-  **[RF06]** Como PESSOA QUE ENCONTROU O ANIMAL, desejo que TENHA UMA ABA PARA ANIMAIS PERDIDOS, para tornar a busca filtrada apenas para animais que foram encontrados por outros usuários.
- **[RF10]** COmo USUÁRIO, desejo INFORMAR QUE O ANIMAL JÁ ESTÁ NOVAMENTE COM A FAMÍLIA. O usuário que postou o anúncio (seja um anúncio de animal perdido ou encontrado) deve utilizar o botão “Família Reunida” para informar que o animal já retornou ao seu lar.


## Caso de uso detalhado do que foi feito:

#### CASO DE USO UC01: CRIAR ANÚNCIO DE ANIMAL PERDIDO.

**Ator primário**: Usuário (Dono de Cão perdido)  
**Pré-Condições**:  
- Não há.

**Pós-Condições**:  
- O anúncio de animal perdido foi devidamente cadastrado no sistema.  

**Cenário Principal**:  
1. O usuário solicita a adição de anúncio ao sistema.
2. O usuário preenche os campos obrigatórios requeridos pelo sistema.  
3. O sistema cadastra as informações e mostra o anúncio na tela de animais perdidos. 

**Fluxo Alternativo**:   

2-  O usuário deixa um dos campos obrigatório em branco.   
- O sistema não deixa o cadastro do anúncio ser finalizado e transmite uma mensagem que indica a falta de um campo.

#### UC02: MARCAR UM ANÚNCIO COMO RESOLVIDO.

**Ator primário**: Usuário (Que criou o anúncio de animal perdido/encontrado)  

**Pré-Condições**:
- O usuário tem um anúncio de animal perdido ou encontrado com o status “aberto”.
Pós-Condições:
- O status do anúncio de animal perdido/encontrado foi “resolvido” e o sistema não mostra mais esse anúncio nas abas principais.  

**Cenário Principal**:
1. O usuário acessa o anúncio que deseja resolver.
2. O usuário usuário solicita a resolução do anúncio e confirma a mensagem de confirmação do sistema.
3. O sistema marca o anúncio como resolvido e não mostra mais o anúncio nas abas principais.  

**Fluxo Alternativo**:  

2- Quando a mensagem de confirmação do sistema aparece, o usuário nega.  
  - O sistema não atualiza o status do anúncio e aguarda o próximo comando do usuário.

#### UC03: EDITAR UM ANÚNCIO EM ABERTO.

**Ator primário**: Usuário (Que criou o anúncio de animal perdido/encontrado)  

**Pré-Condições**:

- O usuário tem um anúncio de animal perdido ou encontrado com o status “aberto”.
Pós-Condições:
- As alterações do anúncio foram registradas no sistema e o anúncio foi exibido com as novas informações.  

**Cenário Principal**:

1. O usuário acessa o anúncio que deseja alterar e solicita a alteração.
2. O usuário substitui as informações antigas pelas novas de acordo com a sua preferência e salva.
3. O sistema atualiza as novas informações no banco de dados e exibe o anúncio com as informações atuais.

**Fluxo Alternativo**:  

2- O usuário deixou um dos campos obrigatórios em branco.  
- O sistema não salva as alterações e transmite uma mensagem indicando o usuário a preencher os campos inválidos.  

2- O usuário não fez nenhuma alteração aos campos do anúncio.  
- O botão de salvar fica indisponível enquanto o usuário não fazer nenhuma alteração. E o sistema aguarda alguma interação com o usuário.

#### UC04: CRIAR UM ANÚNCIO DE ANIMAL ENCONTRADO
**Ator primário**: Usuário (Que encontrou um animal perdido)  
**Pré-Condições**:  
- Não há.

**Pós-Condições**:  
- O anúncio de animal encontrado foi devidamente cadastrado no sistema.  

**Cenário Principal**:  
1. O usuário solicita a adição de anúncio de animal encontrado ao sistema.
2. O usuário preenche os campos obrigatórios requeridos pelo sistema.  
3. O sistema cadastra as informações e mostra o anúncio na tela de animais encontrados. 

**Fluxo Alternativo**:   

2-  O usuário deixa um dos campos obrigatório em branco.   
- O sistema não deixa o cadastro do anúncio ser finalizado e transmite uma mensagem que indica a falta de um campo.

#### UC05 - LOGAR-SE NO SISTEMA
**Ator primário**: Qualquer usuário 
**Pré-Condições**:  
- Não há.

**Pós-Condições**:  
Há uma indicação visual de que o usuário está logado

**Cenário Principal**:  
1. O usuário acessa o software.
2. O usuário informa o seu email e senha e solicita o login.
3. O software valida o usuário e o redireciona para a página principal.

**Fluxo Alternativo**:   

2-  O usuário preenche um dos campos incorretamente.
  - O software não permite que o usuário faça o login.