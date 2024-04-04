// @dart=2.9

import 'dart:io';

void createAndReadRuneterra() {
  String runeterraText =
      "\n\n== Bem vindo(a) à Runeterra ==\n\nTambém conhecido como Terras Mágicas, é o mundo fictício onde League of Legends se passa.\nCompreende o supercontinente de Valoran e 12 oceanos com 3 arquipélagos ao redor deles.\nAlém disso, um par de luas orbita o planeta.\n\n De acordo com as Regiões disponíveis abaixo, escolha uma para obter mais informações:";

  File("runeterra.txt").writeAsStringSync(runeterraText);
  String runeterra = File("runeterra.txt").readAsStringSync();

  print(runeterra);
}

// void initialAlternatives() {
//   stdout.write(
//       "\n[1] Águas de Sentina;\n[2] Bandópolis;\n[3] Demacia;\n[4] Freljord;\n[5] Ilhas das Sombras;\n[6] Ionia;\n[7] Ixtal;\n[8] Piltover;\n[9] Shurima;\n[10] Targon;\n[11] Zaun.\n");
// }


void main() {
 
  createAndReadRuneterra();

}
