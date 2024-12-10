<h1>Projeto Integrador - PUC Campinas</h1>
<h3>Desenvolvimento de sistemas web - 2º Semestre - 2024</h3>
<h3>Por: Carlos Eduardo Almeida do Nascimento</h3>

<p>A disciplina de <strong>Desenvolvimento de Sistemas WEB</strong> do segundo semetestre do curso de <strong>Engenharia de computação</strong> da <strong>PUC Campinas</strong> é um disciplina que conta com o projeto integrador, onde é necessário desenvolver um projeto que englobe as demais disciplinas do curso.</p>
<p>Para meu projeto, optei por desenvolver um jogo 2D em uma engine já familiar para mim, o <strong>Game Maker Studio 2</strong>, com a linguagem <strong>GML</strong>. O jogo desenvolvi se trata de um <strong>tower defense</strong>, onde monstros atacam em ondas, e ao fim de cada uma delas, um mago, que pode ou não ser contratado, chega. O diferencial do jogo desenvolvido, está na interação do jogador com o mundo em que ele está inserido: as interações são feitas por comandos. Por exemplo, para interagir com um mago, primeiro você precisa do nome dele, e ver as interações possível com o mesmo. Para isso, se usa o comando 'interact_ls(nome do mago)', retornando as possiveis interações com o mago. Agora, sabendo o nome do mago, e as interações possiveis, é possivel dar 'interact(nome do mago, indice da interação)' para contrata-lo. Ao contrata-lo, ele não irá mais embora ao inicio de cada wave.</p>
<p>Tendo como foco do projeto a programação, muitas das assets utilizadas foram retiradas do site <a href='itch.io'>itch.io</a>, que conta com diversos conteudos pagos e gratuitos.</p>
<p>Caso queira jogar o jogo, pode acessa-lo por <a href='https://carloseanascimento.github.io/PI-DesenvolvimentoWeb/'>aqui</a>. Ele está sendo hospedado em um dominio do GitHub Pages.</p>
<p>Ademais, o projeto desenvolvido se trata de MVP (produto minímo viável), com muitas ideias de funcionalidades e mecanicas que poderiam ser inseridas, como:</p>
<ul>
    <li>Monstros infligem debuffs nos magos, diminuindo o dano ou a velocidade entre feitiços.</li>
    <li>Possibilidade de buffar os magos com itens dropados pelos monstros.</li>
    <li>Adicionar um pouco de história para aquele mundo, com cenas cinematográficas e itens que contam uma história.</li>
    <li>A cada certo número de ondas, apareceria um boss, que atordoaria os magos e lutaria somente com o player.</li>
</ul>
