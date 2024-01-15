import 'package:flutter/material.dart';

import 'home.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Política de Privacidade'),
         leading: IconButton(
          icon: const Icon(Icons.chevron_left ), // Ícone do botão esquerdo
          onPressed: () {
           Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    );
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Política de Privacidade',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'A sua privacidade é importante para nós. É política do DevFree respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar no site DevFree, e outros sites que possuímos e operamos.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis ​​para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Não compartilhamos informações de identificação pessoal publicamente ou com terceiros, exceto quando exigido por lei.',
            ),
            SizedBox(height: 16.0),
            Text(
              'O nosso site pode ter links para sites externos que não são operados por nós. Esteja ciente de que não temos controle sobre o conteúdo e práticas desses sites e não podemos aceitar responsabilidade por suas respectivas políticas de privacidade.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Você é livre para recusar a nossa solicitação de informações pessoais, entendendo que talvez não possamos fornecer alguns dos serviços desejados.',
            ),
            SizedBox(height: 16.0),
            Text(
              'O uso continuado de nosso site será considerado como aceitação de nossas práticas em torno de Aviso de Privacidad e informações pessoais. Se você tiver alguma dúvida sobre como lidamos com dados do usuário e informações pessoais, entre em contato conosco.',
            ),
            SizedBox(height: 32.0),
            Text(
              'Política de Cookies DevFree',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'O que são cookies?',
            ),
            SizedBox(height: 8.0),
            Text(
              'Como é prática comum em quase todos os sites profissionais, este site usa cookies, que são pequenos arquivos baixados no seu computador, para melhorar sua experiência. Esta página descreve quais informações eles coletam, como as usamos e por que às vezes precisamos armazenar esses cookies. Também compartilharemos como você pode impedir que esses cookies sejam armazenados, no entanto, isso pode fazer o downgrade ou \'quebrar\' certos elementos da funcionalidade do site.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Como usamos os cookies?',
            ),
            SizedBox(height: 8.0),
            Text(
              'Utilizamos cookies por vários motivos, detalhados abaixo. Infelizmente, na maioria dos casos, não existem opções padrão do setor para desativar os cookies sem desativar completamente a funcionalidade e os recursos que eles adicionam a este site. É recomendável que você deixe todos os cookies se não tiver certeza se precisa ou não deles, caso sejam usados ​​para fornecer um serviço que você usa.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Desativar cookies',
            ),
            SizedBox(height: 8.0),
            Text(
              'Você pode impedir a configuração de cookies ajustando as configurações do seu navegador (consulte a Ajuda do navegador para saber como fazer isso). Esteja ciente de que a desativação de cookies afetará a funcionalidade deste e de muitos outros sites que você visita. A desativação de cookies geralmente resultará na desativação de determinadas funcionalidades e recursos deste site. Portanto, é recomendável que você não desative os cookies.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies que definimos',
            ),
            SizedBox(height: 8.0),
            Text(
              'Cookies relacionados à conta',
            ),
            SizedBox(height: 8.0),
            Text(
              'Se você criar uma conta connosco, usaremos cookies para o gerenciamento do processo de inscrição e administração geral. Esses cookies geralmente serão excluídos quando você sair do sistema, porém, em alguns casos, eles poderão permanecer posteriormente para lembrar as preferências do seu site ao sair.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies relacionados ao login',
            ),
            SizedBox(height: 8.0),
            Text(
              'Utilizamos cookies quando você está logado, para que possamos lembrar dessa ação. Isso evita que você precise fazer login sempre que visitar uma nova página. Esses cookies são normalmente removidos ou limpos quando você efetua logout para garantir que você possa acessar apenas a recursos e áreas restritas ao efetuar login.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies relacionados a boletins por e-mail',
            ),
            SizedBox(height: 8.0),
            Text(
              'Este site oferece serviços de assinatura de boletim informativo ou e-mail e os cookies podem ser usados ​​para lembrar se você já está registrado e se deve mostrar determinadas notificações válidas apenas para usuários inscritos / não inscritos.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Pedidos processando cookies relacionados',
            ),
            SizedBox(height: 8.0),
            Text(
              'Este site oferece facilidades de comércio eletrônico ou pagamento e alguns cookies são essenciais para garantir que seu pedido seja lembrado entre as páginas, para que possamos processá-lo adequadamente.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies relacionados a pesquisas',
            ),
            SizedBox(height: 8.0),
            Text(
              'Periodicamente, oferecemos pesquisas e questionários para fornecer informações interessantes, ferramentas úteis ou para entender nossa base de usuários com mais precisão. Essas pesquisas podem usar cookies para lembrar quem já participou numa pesquisa ou para fornecer resultados precisos após a alteração das páginas.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies relacionados a formulários',
            ),
            SizedBox(height: 8.0),
            Text(
              'Quando você envia dados por meio de um formulário como os encontrados nas páginas de contacto ou nos formulários de comentários, os cookies podem ser configurados para lembrar os detalhes do usuário para correspondência futura.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies de preferências do site',
            ),
            SizedBox(height: 8.0),
            Text(
              'Para proporcionar uma ótima experiência neste site, fornecemos a funcionalidade para definir suas preferências de como esse site é executado quando você o usa. Para lembrar suas preferências, precisamos definir cookies para que essas informações possam ser chamadas sempre que você interagir com uma página for afetada por suas preferências.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Cookies de Terceiros',
            ),
            SizedBox(height: 8.0),
            Text(
              'Em alguns casos especiais, também usamos cookies fornecidos por terceiros confiáveis. A seção a seguir detalha quais cookies de terceiros você pode encontrar através deste site.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Este site usa o Google Analytics',
            ),
            SizedBox(height: 8.0),
            Text(
              'Este site usa o Google Analytics, que é uma das soluções de análise mais difundidas e confiáveis ​​da Web, para nos ajudar a entender como você usa o site e como podemos melhorar sua experiência. Esses cookies podem rastrear itens como quanto tempo você gasta no site e as páginas visitadas, para que possamos continuar produzindo conteúdo atraente. Para mais informações sobre cookies do Google Analytics, consulte a página oficial do Google Analytics.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Análises de terceiros',
            ),
            SizedBox(height: 8.0),
            Text(
              'As análises de terceiros são usadas para rastrear e medir o uso deste site, para que possamos continuar produzindo conteúdo atrativo. Esses cookies podem rastrear itens como o tempo que você passa no site ou as páginas visitadas, o que nos ajuda a entender como podemos melhorar o site para você.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Testes de novos recursos',
            ),
            SizedBox(height: 8.0),
            Text(
              'Periodicamente, testamos novos recursos e fazemos alterações sutis na maneira como o site se apresenta. Quando ainda estamos testando novos recursos, esses cookies podem ser usados ​​para garantir que você receba uma experiência consistente enquanto estiver no site, enquanto entendemos quais otimizações os nossos usuários mais apreciam.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Compromisso de proteção dos dados',
            ),
            SizedBox(height: 8.0),
            Text(
              'Nosso site não compartilha, aluga ou vende suas informações pessoais para terceiros. Quaisquer informações adicionais coletadas, como endereços de e-mail, serão usadas apenas para fornecer o serviço solicitado, como responder a perguntas ou enviar newsletters.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Alterações na Política de Privacidade',
            ),
            SizedBox(height: 8.0),
            Text(
              'Embora a maioria das alterações seja provavelmente pequena, reservamo-nos o direito de modificar nossa Política de Privacidade a qualquer momento, sem aviso prévio. Incentivamos os visitantes a verificar frequentemente esta página para quaisquer alterações na Política de Privacidade. Seu uso continuado deste site após qualquer alteração nesta Política de Privacidade constituirá sua aceitação de tal alteração.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Contate-nos',
            ),
            SizedBox(height: 8.0),
            Text(
              'Se você tiver alguma dúvida sobre esta Política de Privacidade, pode entrar em contato conosco pelo email: sandrolopes@clientecorretor.com.br',
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PrivacyPolicyPage(),
  ));
}
