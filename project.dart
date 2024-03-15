// @dart=2.9

import 'dart:io';

void createAndReadRuneterra() {
  String runeterraText =
      "\n\n== Bem vindo(a) à Runeterra ==\n\nTambém conhecido como Terras Mágicas, é o mundo fictício onde League of Legends se passa.\nCompreende o supercontinente de Valoran e 12 oceanos com 3 arquipélagos ao redor deles.\nAlém disso, um par de luas orbita o planeta.\n\n De acordo com as Regiões disponíveis abaixo, escolha uma para obter mais informações:";

  File("runeterra.txt").writeAsStringSync(runeterraText);
  String runeterra = File("runeterra.txt").readAsStringSync();

  print(runeterra);
}

void initialAlternatives() {
  stdout.write(
      "\n[1] Águas de Sentina;\n[2] Bandópolis;\n[3] Demacia;\n[4] Freljord;\n[5] Ilhas das Sombras;\n[6] Ionia;\n[7] Ixtal;\n[8] Piltover;\n[9] Shurima;\n[10] Targon;\n[11] Zaun.\n");
}

void endAlternative() {
  print("\n(Opção [0] para encerrar o programa)\n");
}

void backAlternative() {
  print("\n(Digite 'BACK' para voltar à página anterior)");
}

int backOrForward() {
  String ifBack = "";
  int nextId = 0;

  if ((ifBack = stdin.readLineSync()) != "BACK") {
    nextId = int.parse(ifBack);
  }

  return nextId;
}

void aguasDeSentinaAlternatives() {
  stdout.write("[1] Personagens;\n[2] Locais;\n");
}

void aguasDeSentinaRegion() {
  String aguasDeSentinaText =
      "\n-> Águas de Sentina <-\n   Situada no arquipélago das Ilhas da Chama Azul, Águas de Sentina é uma cidade portuária sem igual, cheia de mercenários, gangues das docas e contrabandistas do mundo inteiro.\n Aqui, fortunas crescem e ambições desmoronam em um piscar de olhos. É uma cidade de recomeços para quem está fugindo da justiça, de dívidas ou de perseguições, já que nestas ruas tortuosas ninguém se importa com o seu passado.\n Mesmo assim, a cada manhã, corpos de viajantes descuidados são encontrados flutuando no mar perto das docas, com os bolsos vazios e suas gargantas cortadas...\n   Embora seja perigosíssima, Águas de Sentina fervilha com novas oportunidades, já que não é limitada pelas amarras de um governo formal e regulações de mercado.\n Quem tem dinheiro pode comprar quase tudo aqui, desde itens hextec proibidos até a lealdade de um senhor do crime.\n   Com a destituição do último 'rei dos ladrões', Águas de Sentina entrou em um período de transição enquanto os capitães mais proeminentes tentam chegar a um acordo sobre o futuro da cidade.\n Mas, havendo navios em condições de navegar e homens dispostos a tripulá-los, Águas de Sentina continuará sendo um dos lugares mais peculiares e bem relacionados de Runeterra.\n";

  File("aguasdesentina.txt").writeAsStringSync(aguasDeSentinaText);
  String aguasDeSentina = File("aguasdesentina.txt").readAsStringSync();

  print(aguasDeSentina);
}

void insideAguasDeSentina(int personagensOrLocais){
  if (personagensOrLocais == 1) {
    String personagensAguasDeSentina = "";

    File("aguasdesentinaPersoangens.txt").writeAsStringSync(personagensAguasDeSentina);
  }

}

int pageToDisplay(int pageId) {
  int nextId = 0;

  if (pageId == 1) {
    initialAlternatives();
    endAlternative();
    nextId = int.parse(stdin.readLineSync());
  } else if (pageId == 2) {
    aguasDeSentinaRegion();
    aguasDeSentinaAlternatives();
    backAlternative();
    endAlternative();
    nextId = backOrForward();
    if (nextId > 0) {
      insideAguasDeSentina(nextId);
    }
  }

  return nextId;
}

void main() {
  createAndReadRuneterra();

  int pageId = 1;

  while (pageId != 0) {
    //print("PageId: $pageId");
    pageId = pageToDisplay(pageId) + 1;
    //print("PageId: $pageId");
  }
}
