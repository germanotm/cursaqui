Cursa Aqui
========

Sistema Web para cadastros de alunos e cursos.

### Demostração online
  Em breve...

### Como instalar

1. Clone o repositório
2. Crie o arquivo config/database.yml, use o config/database.yml.bkp como exemplo.
3. Instale as gems: bundle install
4. Crie o banco: rake db:setup
5. Comece a desenvolver e seja feliz.

### História

Esse sistema foi inicialmente desenvolvido para um processo seletivo no qual participei em 2013 para a empresa innvent.
Foi solicitado o desenvolvimento de um sistema web com as seguintes funcionalidades mínimas.

a) cadastro de alunos [nome, email, matrícula, data nascimento].<br>
b) cadastro de turma [nome, data início, data fim].<br>
c) deve ser possível matricular um aluno na turma.<br>

Devido a minha restrição de tempo, apenas o final de semana, optei por primeiro atender às funcionalidades mínimas.

PASSO 1 - Implementar funcionalidades mínimas

Funcionalidades iniciais:

TODO:
- [x] Iniciar projeto <br>
  Criar um projeto rails e banco mysql para iniciar o desenvolvimento da  aplicação.
- [x] Adicionar testes <br>
  Adicionar gems rspec e guard para testar o sistema.
- [x] Adicionar bootstrap twitter
- [x] CRUD Cursos
- [x] CRUD Alunos
- [x] Matricular aluno no curso

PASSO 2 - Tornando o projeto útil e interessante.
Um dia quem sabe...

Para aproveitar o tempo de desenvolvimento nesse projeto resolvi acrescentar algumas funcionalidades para tornar o sistema realmente utilizável. 
As funcionalidades foram escolhidadas tendo como objetivo atender uma necessidade atual do CEFET-MG e que pode ser necessidade de alguma outra instituição.
O CEFET realiza frequentemente minicursos e palestras, mas não possui um sistema no qual os alunos possam se inscrever na palestra ou minicurso e posteriormente imprimir seu certificado de participadão.

O sistema final irá possibilitar que a instituição cadastre cursos, que podem ser palestras ou minicursos.
Após isso, uma pessoa(aluno) cadastrada no sistema poderá se inscrever em um curso.
Depois da inscrição a instituição deve confirmar a matricula do aluno no curso.
Após o evento realizado a instituição deve confirmar a presença do aluno no evento e depois disso o aluno poderá entrar no sistema e imprimir seu certificado de participação.

TODO:
- [ ] Conversar com rogerinho (professor do CEFET) para levantar os requisitos direito.
- [ ] Adicionar login (devise).
- [ ] Criar layout Admin e layout Aluno.
- [ ] Adicionar filtro na busca de cursos(ransack).
- [ ] Adicionar filtro na busca de alunos(ransack).
- [ ] Funcionalidade para aluno inscrever inscrever em curso.
- [ ] Instituição deve confirmar a inscrição do aluno.
- [ ] Enviar email quando inscrição for confirmada.
- [ ] Instituição deve confirmar presença do aluno no curso.
- [ ] Aluno deve certificado se presença foi confirmada.
- [ ] Enviar email informando disponibilidade do certificado.

PASSO 3 - Futuro distante...

Fazer sistema em que qualquer instituição possa se cadastrar, colocar seus cursos e entregar certificados de participação, tudo no conforto de sua casa.

TODO:
- [ ] Pensar em toda essa parte.
