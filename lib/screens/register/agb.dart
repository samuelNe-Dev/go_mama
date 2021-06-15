import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AGB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Go Mama")),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            //Container 1
            Container(
              /*margin: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 40.0,
                ),*/
              padding: const EdgeInsets.only(
                top: 0,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              color: Colors.white,
              child: RichText(
                  text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '\nAGB\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  TextSpan(
                      text:
                          '1. Annahme des Vertrags über die Nutzungsbedingungen.\n\nDurch das Erstellen eines GoMama-Kontos, sei es mit einem Mobilgerät, einer mobilen Anwendung oder einem Computer (zusammenfassend der "Dienst" genannt) erklären Sie sich einverstanden, an diese Nutzungsbedingungenund unsere Datenschutzrichtlinie gebunden zu sein. Wenn Sie nicht alle Bedingungen dieses Vertrags annehmen und sich mit diesen nicht einverstanden erklären, bitten wir Sie, den Dienst nicht zu nutzen.Wir sind berechtigt, von Zeit zuZeit Änderungen an diesem Vertrag und an dem Dienst vorzunehmen. Diese können wir aus verschiedenen Gründen vornehmen, z. B. um Gesetzesänderungen oder veränderte gesetzliche Anforderungen, neue Funktionen oder Änderungen von Geschäftspraktiken widerzuspiegeln. Die aktuellste Version dieses Vertrags wird im Rahmen des Dienstes in den Einstellungen gepostet, und Sie sollten regelmäßig die aktuellste Version lesen. Die aktuellste Version ist immer die Version, die Gültigkeit hat. Wenn die Änderungen bedeutende Änderungen umfassen, die Ihre Rechte oder Pflichten betreffen, werden wir Sie spätestens 30 Tage im Voraus auf angemessene Weise über diese Änderungen informieren (es sei denn, wir sind dazu nach geltendem Recht nicht in der Lage), z. B. per Mitteilungen über den Dienst oder per E-Mail. Wenn Sie den Dienst weiterhin nutzen, nachdem die Änderungen wirksam werden, stimmen Sie dem überarbeiteten Vertrag zu.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                  TextSpan(
                      text:
                          '2. Berechtigung.\n\nSie müssen mindestens 18 Jahre alt sein, um ein Konto auf GoMamaerstellen und den Dienst nutzen zu können. Durch das Erstellen eines Kontos und durch die Nutzung des Dienstes erklären und gewährleisten Sie, dass:Sie einen verbindlichen Vertrag mit GoMama schließen können;Sie diesen Vertrag und alle geltenden lokalen, staatlichen, nationalen und internationalen Gesetze, Regeln und Vorschriften einhalten werden; undSie zu keinem Zeitpunkt ein Schwerverbrechen oder eine Straftat (oder ein Verbrechen von ähnlichem Ausmaß), ein Sexualverbrechen oder eine Straftat mit Gewalt begangen haben, und dass Sie in keinem staatlichen, bundesstaatlichen oder lokalen Sexualstraftäterregister als Sexualstraftäter geführt werden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '3. Ihr Konto.\n\nUm GoMamazu verwenden,müssen sie sich registrieren. Sie sind dafür verantwortlich, die Zugangsdaten, die Sie zur Anmeldung bei GoMamaverwenden, vertraulich zu behandeln, und tragen die alleinige Verantwortung für sämtliche Aktivitäten, die unter diesen Zugangsdaten auftreten. Wenn Sie denken, dass sich jemand Zugriff auf Ihr Konto verschafft hat, kontaktieren Sie uns bitte unverzüglich per E-Mail.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '4. Änderung des Dienstes und Kündigung.\n\nGoMamaist stets bestrebt, den Dienst zu verbessern und Ihnen zusätzliche Funktionalitäten zur Verfügung zu stellen, die Sie als ansprechend und nützlich empfinden. Dies bedeutet, dass wir von Zeit zu Zeit neue Produktfunktionen oder -erweiterungen einbringen sowie einige Funktionen entfernen werden, und wenn diese Maßnahmen keine wesentliche Auswirkung auf Ihre Rechte oder Pflichten haben, dürfen wir diese durchführen, ohne Sie vorher darüber zu informieren. Wir können sogar den Dienst ganz aussetzen.Sie können Ihr Konto jederzeit aus jeglichem Grund kündigen, indem Sie den Anweisungen unter "Einstellungen" im Dienst folgen. GoMamakann Ihr Konto jederzeit ohne Ankündigung kündigen, wenn wir der Ansicht sind, dass Sie gegen diesen Vertrag verstoßen haben. Wenn Ihr Konto gekündigt wurde, wird dieser Vertrag beendet.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '5. Sicherheit; Ihre Interaktionen mit anderen Mitgliedern.\n\nGoMama istnicht für das Verhalten von Mitgliedern innerhalb oder außerhalb des Dienstes verantwortlich. Sie erklären sich damit einverstanden, bei allen Interaktionen mit anderen Mitgliedern vorsichtig vorzugehen, insbesondere, wenn Sie sich dazu entschließen, außerhalb des Dienstes zu kommunizieren oder dieMitglieder persönlich zu treffen. SIE SIND ALLEIN FÜR IHRE INTERAKTIONEN MIT ANDEREN MITGLIEDERN VERANTWORTLICH. SIE SIND SICH DARÜBER BEWUSST, DASS GOMAMAKEINE ÜBERPRÜFUNG DER KRIMINELLEN VERGANGENHEIT BEI SEINEN MITGLIEDERN VORNIMMT ODER SICH ANDERWEITIG ÜBER DIE VERGANGENHEIT UND HINTERGRÜNDE SEINER MITGLIEDER ERKUNDIGT. GOMAMAGIBT KEINE ZUSICHERUNGEN ODER GARANTIEN HINSICHTLICH DES VERHALTENS DER MITGLIEDER.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '6. Rechte, die Sie GoMamagewähren.\n\nSie stimmen zu, dass alle Informationen, die Sie nach dem Erstellen Ihres Kontos übermitteln, zutreffend und wahrheitsgemäß sind.Sie sind sich darüber bewusst und erklären sich damit einverstanden, dass wir jegliche Inhalte, die Sie im Rahmen eines Dienstes posten, überwachen und prüfen können. Wir können jegliche Inhalte, die nach unserem alleinigen Ermessen gegen diesen Vertrag verstoßen oder den Ruf des Dienstes schädigen könnten, ganz oder teilweise löschen. Sie stimmen zu, bei der Kommunikation mit unseren Kundendienstmitarbeitern respektvoll und freundlich zu sein. Wenn wir der Auffassung sind, dass Ihr Verhalten gegenüber unseren Kundendienstmitarbeitern oder anderen Mitarbeitern zu irgendeinem Zeitpunkt drohend oder beleidigend ist, behalten wir uns das Recht vor, Ihr Konto mit sofortiger Wirkung zu kündigen.Als Gegenleistung dafür, dass GoMamaes Ihnen ermöglicht, den Dienst zu nutzen, erklären Sie sich damit einverstanden, dass wir, unsere verbundenen Unternehmen und unsere externen Partner Werbung auf dem Dienst platzieren können. Wir weisen Sie darauf hin, dass GoMamaauf Ihre Kontoinformationen und Inhalte zugreifen, diese speichern und offenlegen kann, wenn dies gesetzlich vorgeschrieben ist, indem es seinen Vertrag mit Ihnen ausführt, oder nach Treu und Glauben, dass dieser Zugriff, diese Speicherung oder Offenlegung einem berechtigten Interesse entspricht, um etwa: (i) einem rechtlichen Verfahren zu entsprechen; (ii) den Vertrag durchzusetzen; (iii) auf Behauptungen zu reagieren, dass irgendwelche Inhalte gegen die Rechte Dritter verstoßen; (iv) auf Ihre Anfragen beim Kundendienst zu reagieren; oder (v) die Rechte, das Eigentum oder die persönliche Sicherheit des Unternehmens oder einer anderen Person zu schützen.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '7. Community-Regeln.\n\nDurch die Nutzung des Dienstes erklären Sie sich damit einverstanden, Folgendes zu unterlassen:den Dienst zu Zwecken zu nutzen, die illegal oder durch diesen Vertrag verboten sind.den Dienst für schädliche oder schändliche Zwecke zu nutzenden Dienst zu nutzen, um GoMamazu schadengegen unsere Community-Richtlinien zu verstoßen, die von Zeit zu Zeit aktualisiert werden.Spam zu versenden, Geld von anderen Mitgliedern zu erbitten oder diese zu betrügen.sich als eine andere natürliche oder juristische Person auszugeben oder Bilder von einer anderen Person ohne deren Erlaubnis zu posten.andere zu mobben, zu "stalken", einzuschüchtern, anzugreifen, zu belästigen, schlecht zu behandeln oder zu diffamieren.Inhalte zu posten, welche die Rechte einer Person verletzen oder gegen diese verstoßen, einschließlich der Öffentlichkeits-, Datenschutz-, Urheber-, Markenrechte oder anderer Rechte des geistigen Eigentums oder des Vertragsrechts.Inhalte zu posten, die Hassreden darstellen, bedrohend, sexuell explizit oder pornografisch sind.Inhalte zu posten, die zu Gewalt aufrufen oder Nacktheit oder grafische oder grundlose Gewalt enthalten. jegliche Inhalte zu posten, die Rassismus, Fanatismus, Hass oder Körperverletzung jeglicher Art gegen jegliche Gruppe oder Einzelpersonen fördern.Passwörter zu jedweden Zweck oder personenbezogene Daten für kommerzielle oder gesetzwidrige Zwecke von anderen Mitgliedern abzufragen oder die personenbezogenen Daten anderer Personen ohne die Zustimmung der entsprechenden Person zu verbreiten.das Konto eines anderen Mitglieds zu verwenden, ein Konto mit einem anderen Mitglied zu teilen oder mehr als ein Konto zu unterhalten.ein anderes Konto zu erstellen, wenn wir bereits Ihr Konto gekündigt haben, es sei denn, Sie haben unsere Erlaubnis.GoMamabehält sich das Recht vor zu kündigen, wenn Sie gegen diese Vereinbarung verstoßen haben, den Dienst missbraucht oder sich in einer Weise verhalten haben, die GoMamaals unangemessen oder rechtswidrig betrachtet, darunter Handlungen oder Kommunikation, die innerhalb oder außerhalb des Dienstes stattfinden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '8. Inhalte von anderen Mitgliedern.\n\nObwohl sich GoMamadas Recht vorbehält, Inhalte, die gegen diesen Vertrag verstoßen, zu prüfen und zu entfernen, liegen solche Inhalte in der alleinigen Verantwortung des Mitglieds, das diese postet,und GoMamakann nicht garantieren, dass sämtliche Inhalte mit diesem Vertrag im Einklang stehen. Wenn Sie Inhalte auf dem Dienst bemerken, die gegen diesen Vertrag verstoßen, melden Sie dies bitte.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '9. Haftungsausschlüsse.\n\nGOMAMASTELLT DEN DIENST OHNE MÄNGELGEWÄHR UND IN DER VERFÜGBAREN FORM SOWIE IN DEM UMFANG, DER DURCH GELTENDES RECHT ZULÄSSIG IST, BEREIT UND GEWÄHRT KEINE GARANTIEN JEDWEDER ART, OB AUSDRÜCKLICH, STILLSCHWEIGEND, GESETZLICH ODER ANDERWEITIG IM HINBLICK AUF DENDIENST (EINSCHLIESSLICH ALLER DARIN ENTHALTENEN INHALTE), EINSCHLIESSLICH, ABER NICHT BESCHRÄNKT AUF JEDWEDE STILLSCHWEIGENDE GARANTIEN FÜR ZUFRIEDENSTELLENDE QUALITÄT, MARKTGÄNGIGKEIT, EIGNUNG FÜR EINEN BESTIMMTEN ZWECK ODER NICHTVERLETZUNG. GOMAMASICHERT NICHT ZU UND GARANTIERT NICHT, DASS (A) DER DIENST UNUNTERBROCHEN, SICHER ODER FEHLERFREI SEIN WIRD, (B) ETWAIGE MÄNGEL ODER FEHLER IM DIENST BEHOBEN WERDEN, ODER (C) DASS INHALTE ODER INFORMATIONEN, DIE SIE AUF DEM DIENST ODER DURCH DIESEN ERHALTEN, KORREKT SIND.GOMAMAÜBERNIMMT KEINE VERANTWORTUNG FÜR INHALTE, DIE SIE, ANDERE MITGLIEDER ODER DRITTE ÜBER DEN DIENST POSTEN, VERSENDEN ODER ERHALTEN. DER ZUGRIFF AUF JEGLICHES MATERIAL, DAS HERUNTERGELADEN ODER DURCH DIE NUTZUNG DES DIENSTES ANDERWEITIG ERHALTEN WIRD, ERFOLGT NACH EIGENEM ERMESSEN UND AUF EIGENE GEFAHR.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '10. Dienste Dritter.\n\nDer Dienst kann Werbung und Werbeaktionen, die von Dritten angeboten werden, sowie Links zu anderen Websites oder Internet-Ressourcen enthalten. GoMamaist nicht verantwortlich für die Verfügbarkeit (oder mangelnde Verfügbarkeit) solcher externen Websites oder Internet-Ressourcen. Wenn Sie beschließen, mit Dritten über unseren Dienst zu interagieren, unterliegt deren Beziehung mit Ihnen den Bedingungen dieser Dritten. GoMamaist nicht verantwortlich oder haftbar für die Bedingungen oder Maßnahmen dieser Dritten.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text: '\nDatenschutz\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      TextSpan(
                      text:
                          '1.Datenverantwortliche\n\nChristina Jones\nHeinrichstr. 5\n65428 Rüsselsheim\nDeutschland\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '2. Wo diese Datenschutzrichtlinie gültig ist\n\nDiese Datenschutzbestimmungen gelten für Websites, Appsund sonstige Dienste, die von GoMama betrieben werden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '3. Daten, die wir erfassen\n\nEs versteht sich von selbst, dass wir Ihnen nicht bei der Etablierung bedeutungsvoller Verbindungen helfen können, ohne dass wir einige Daten von Ihnen kennen, wie beispielsweise grundlegende Profildaten und die Arten der Menschen, die Sie gerne treffen möchten.Daten, die Sie uns zu Verfügung stellenBei derNutzung unserer Dienste entscheiden Sie sich dazu, uns gewissen Daten zu Verfügung zu stellen. Dies beinhaltet: Wenn Sie ein Konto erstellen, geben Sie mindestens Ihre Anmeldedaten, sowie einige grundlegende Details an, die für die Ausführung des jeweiligen Dienstes notwendig sind, wie beispielsweise Ihr Geburtsdatum.Wenn Sie Ihr Profil erstellen, können Sie weitere Daten angeben, wie beispielsweise Informationen zu Ihrer Persönlichkeit, Ihrem Lebensstil und Ihren Interessen oder sonstige Informationen zu Ihrer Person, aber auch Fotos . Um bestimmte Inhalte wie Fotos hinzuzufügen, können Sie uns erlauben, auf Ihre Kamera und Ihr Fotoalbum zuzugreifen. Einige der Daten, die Sie freiwillig zur Verfügung stellen, werden in einigen Rechtsordnungen gegebenenfalls als „speziell“ oder „vertraulich“ erachtet, beispielsweise Daten zu Ihrer Rasse oder Volkszugehörigkeit, Ihrer sexuellen Orientierung oder Ihren Glaubensgrundsätzen. Indem Sie sich dazu entscheiden, diese Informationen zu Verfügung zu stellen, stimmen Sie der Verarbeitung dieser Daten durch uns zu.Wenn Sie an Umfragen oder Zielgruppen teilnehmen, informieren Sie uns über Ihre Erkenntnisse hinsichtlich unserer Produkte und Dienste,antworten auf unsere Fragen und erstellen Erfahrungsberichte.Natürlich verarbeiten wir im Rahmen unserer Dienste auch die Chats, die Sie mit anderen Personen führen, sowie die Inhalte, die Sie veröffentlichen.Informationen, die wir von anderen erhaltenZusätzlich zu den Informationen, die Sie uns direkt zur Verfügung stellen, erhalten wir auch von anderen Personen Informationen über Sie. Hierzu zählen:Andere Nutzer stellen uns gegebenenfalls Informationen über Sie zur Verfügung, während sie unsere Dienste nutzen. So erfassen wir gegebenenfalls von anderen Nutzern Informationen über Sie, wenn diese uns in Bezug auf Sie kontaktieren.Informationen, die erfasst werden, wenn Sie unsere Dienste nutzenWenn Sie unsere Dienste nutzen, erfassen wir Informationen darüber, welche Funktionen Sie verwendet haben, wie Sie diese verwendet haben und welche Geräte Sie nutzen, um auf unsere Dienste zuzugreifen. Weitere Details hierzu finden Sie unterhalb:Anwendungsinformationen Wir erfassen Informationen über Ihre Aktivität in unseren Diensten, zum Beispiel, wie Sie diese verwenden (z. B. Datum und Uhrzeit, zu der Sie sich eingeloggt haben, Funktionen, die Sie verwendet haben, Suchanfragen, Klicks und Seiten, die Ihnen angezeigt wurden, verweisende Website-Adressen, Werbung, die Sie angeklickt haben) und wie Sie mit anderen Nutzer interagieren (z. B. Nutzer, mit denen Sie Kontakt aufnehmen und interagieren, Zeitpunkt und Datum Ihrer Interaktionen, Anzahl der Nachrichten, die Sie senden und erhalten).Geräteinformationen Wir erfassen Informationen von und über das Gerät/die Geräte, die Sie nutzen, um auf unsere Dienste zuzugreifen. Hierzu zählen: Hardware-und Software-Informationen wie IP-Adresse, Geräte-IDund Geräteart, gerätespezifische Einstellungen und App-Einstellungen und -Eigenschaften, Absturz der Anwendung, Werbe-IDs (wie beispielsweise AAID von Google und IDFA von Apple. In beiden Fällen handelt es sich um zufällig generierte Nummern, die Sie in den Einstellungen Ihres Gerätes zurücksetzen können), Browserart, Version und Sprache, Betriebssystem, Zeitzonen und Kennungen in Zusammenhang mit Cookies oder sonstigen Technologien, die Ihr Gerät oder Ihren Browser zweifelsfrei identifizieren können (z. B. IMEI/UDID und MAC-Adresse);Informationen zu Ihrer drahtlosen und mobilen Netzwerkverbindung, wie Ihren Dienstanbieter und Ihre Signalstärke;Informationen zu Gerätesensoren wie Beschleunigungsmesser, Gyroskope und Kompasse.Sonstige Informationen mit Ihrer Einwilligung Falls Sie es uns gestatten, erfassen wir Ihre genaue Geolokalisierung (Länge und Breite) mittels unterschiedlicher Verfahren, abhängig von den Diensten und Geräten, die Sie nutzen, einschließlich GPS, Bluetooth oder WLAN-Verbindung. Die Ermittlung Ihrer Geolokalisierung kann im Hintergrund erfolgen, selbst wenn Sie die Dienste nicht nutzen, falls die Genehmigung, die Sie uns erteilt haben, eine derartige Erfassung ausdrücklich gestattet. Falls Sie es uns nicht genehmigen, Ihre Geolokalisierung zu ermitteln, werden wir es nicht tun. Ebenso dürfen wir, falls Sie es gestatten, Ihre Fotos und Videos erfassen (beispielsweise, falls Sie ein Foto, Video oder Streaming in den Diensten veröffentlichen möchten).\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '4. Wie wir Ihre Daten verwenden\n\nDer Hauptgrund zur Nutzung Ihrer Daten ist die Erbringung und Verbesserung unserer Dienste. Zusätzlich nutzen wir Ihre Daten, um Sie zu schützen und Ihnen die Art von Werbung anzubieten, die Sie interessieren könnte. Um Ihre Daten wie oben beschrieben zu verarbeiten, vertrauen wir auf die folgenden rechtlichen Grundlagen:Erbringung unserer Dienste an Sie: Meistens verarbeiten wirIhre Daten, um den Vertrag zu erfüllen, den Sie mit uns geschlossen haben. Während Sie unsere Dienste in Anspruch nehmen, um bedeutungsvolle Verbindungen zu etablieren, verwendend wir Ihre Daten, um Ihr Konto und Ihr Profil aufrechtzuerhalten, es für andere Nutzer sichtbar zu machen und Ihnen andere Nutzer zu empfehlen.Berechtigte Interessen: Wir dürfen Ihre Daten überall dort verwenden, wo wir ein berechtigtes Interesse hierfür haben. So analysieren wir beispielsweise das Verhalten der Nutzer unserer Dienste, um unsere Angebote kontinuierlich zu verbessern und um Ihnen Angebote vorzuschlagen, die Sie interessieren könnten und wir verarbeiten Daten zu administrativen Zwecken, zur Betrugserkennung und aus anderen rechtlichen Gründen.Einwilligung: Wir bitten Sie gegebenenfalls von Zeit zu Zeit um Ihre Einwilligung zur Nutzung Ihrer Daten für bestimmte Zwecke. Sie können Ihre Einwilligung jederzeit widerrufen, indem Sie uns unter der Adresse kontaktieren, die Sie am Ende der vorliegenden Datenschutzbestimmungen finden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '5. Wie wir Ihre Daten teilen\n\nDa es unser Ziel ist, Ihnen bei der Etablierung bedeutungsvoller Verbindungen zu helfen, geben wir Nutzerdaten vor allem an andere Nutzer weiter. Wir geben aber auch einige Nutzerdaten an Dienstanbieter und Partner weiter, die uns bei der Ausführung unserer Dienste unterstützen, an andere Unternehmen der Match Group und, in manchen Fällen, an Justizbehörden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          'An andere Nutzer\n\nDa es unser Ziel ist, Ihnen bei der Etablierung bedeutungsvoller Verbindungen zu helfen, geben wir Nutzerdaten vor allem an andere Nutzer weiter. Wir geben aber auch einige Nutzerdaten an Dienstanbieter und Partner weiter, die uns bei der Ausführung unserer Dienste unterstützen, an andere Unternehmen der Match Group und, in manchen Fällen, an Justizbehörden.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          'Falls gesetzlich erforderlich\n\nWir dürfen Ihre Daten weitergeben, wenn dies vernünftigerweise erforderlich ist: (i) um einem rechtlichen Verfahren, wie einen Gerichtsbeschluss, eine Vorladung oder einem Durchsuchungsbefehl, einer behördlichen/strafrechtlichen Ermittlung oder sonstigen gesetzlichen Vorgaben Folge zu leisten; (ii) um eine Verbrechensprävention oder -aufklärung zu unterstützen (in jedem Fall nach Maßgabe des geltenden Rechts); oder (iii) um die Sicherheit einer anderen Person zu schützen.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          'Um gesetzliche Rechte durchzusetzen\n\nWir dürfen auch Informationen freigeben: (i) falls die Freigabe unsere Haftbarkeit in einer tatsächlich eingeleiteten oder angedrohten Klage verringern würde; (ii) falls dies notwendig ist, um unsere gesetzlichen Rechte und die gesetzlichen Rechte unserer Nutzer, Geschäftspartner oder sonstiger Interessenten zu schützen; (iii) um unsere Vereinbarung mit Ihnen umzusetzen; und (iv) um illegale Aktivitäten, vermuteten Betrug oder sonstiges Fehlverhalten zu untersuchen, zu verhindern oder andere Maßnahmen dagegen zu ergreifen.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          'Mit Ihrer Einwilligung oder auf Ihren Wunsch hin\n\nWir bitten Sie gegebenenfalls um Ihre Einwilligung zur Weitergabe Ihrer Daten an Dritte. In einem solchen Falle werden wir deutlich machen, weshalb wir die Daten weitergeben möchten.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '6. Ihre Rechte\n\nWir möchten, dass Sie Ihre Daten kontrollieren können, daher stellen wir Ihnen die folgenden Tools zur Verfügung:Löschung. Sie können Ihr Konto löschen, indem Sie direkt im jeweiligen Dienst die zugehörige Funktion verwenden.Wir möchten, dass Sie sich Ihrer Datenschutzrechte bewusst sind. Hier sind einige Schlüsselaspekte, die Sie sich merken sollten:Überprüfung Ihrer Daten. Anwendbare Datenschutzrechte geben Ihnen gegebenenfalls das Recht, personenbezogene Daten, die wir von Ihnen gespeichert haben, zu überprüfen (abhängig von der Gerichtsbarkeit kann dieses Recht als Zugriffsrecht, Übertragungsrecht oder eine Variation dieser Begriffe bezeichnet werden). Sie können eine Kopie Ihrer personenbezogenen Daten anfordern, indem Sie hier einen Antrag stellen.Aktualisierung Ihrer Daten. Falls Sie der Meinung sind, dass Daten, die wir von Ihnen gespeichert haben, nicht richtig sind oder wir nicht länger das Recht haben, diese Daten zu nutzen, und ihre Berichtigung oder Löschung beantragen oder ihrer Verarbeitung widersprechen möchten, kontaktieren Sie uns bitte hier.Zu Ihrem Schutz und zum Schutz all unserer Nutzer können wir Sie bitten, einen Identitätsnachweis zu erbringen, bevor wir die obigen Anträge bearbeiten können.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '8. Wie lange wir Ihre Daten vorhalten\n\nWir bewahren Ihre persönlichen Informationen nur solange auf, wie wir sie für rechtmäßige Geschäftszwecke benötigen und wie es geltende Gesetze erlauben. Um für den Schutz und die Sicherheit unserer Nutzer innerhalb und außerhalb unserer Dienste zu sorgen, bewahren wir Ihre Daten zur Sicherheit nach Löschung des Kontos noch drei Monate lang auf. Während dieser Zeit bleiben die Kontodaten gespeichert, obwohl das Konto natürlich für niemanden mehr sichtbar sein wird.In der Praxis bedeutet das, dass wir nach der Löschung Ihres Kontos (und Ablauf der Sicherheitsaufbewahrungszeit) oder nach zwei Jahren kontinuierlicher Inaktivität alle Ihre Daten löschen oder anonymisieren, es sei denn:wir sind aufgrund geltender Gesetze zu einer Aufbewahrung verpflichtet (beispielsweise werden einige „Verkehrsdaten“ für ein Jahr gespeichert, um gesetzliche Aufbewahrungsvorschriften zu erfüllen);wir sind zum Nachweis unserer Einhaltung geltender Gesetze zu einer Aufbewahrung verpflichtet (so werden beispielsweise Nachweise über die Einwilligung zu unseren Nutzungsbedingungen und zu unseren Datenschutzbestimmungen sowie ähnliche Einwilligungen fünf Jahre lang aufbewahrt);es gibt eine offene Frage, eine Klage oder einen Streitfall, wodurch wir veranlasst werden, wesentliche Informationen aufzubewahren, bis das Problem geklärt ist; oderdie Daten müssen für legitime Geschäftsinteressen wie beispielsweise Betrugsprävention und Verstärkung der Sicherheit der Nutzer, aufbewahrt werden. So werden zum Beispiel Daten aufbewahrt, um einen Nutzer, der aufgrund unsicheren Verhaltens oder Sicherheitsvorfällen gesperrt wurde, an der Eröffnung eines neuen Kontos zu hindern.Bitte beachten Sie, dass wir aufgrund technischer Beschränkungen nicht versprechen können, dass alle Daten innerhalb eines bestimmten Zeitraumes gelöscht werden, selbst wenn unsere Systeme so konzipiert sind, dass sie gemäß den oben genannten Richtlinien Verfahren zur Datenlöschung ausführen.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '9. Privatsphäre vonKindern\n\nUnsere Dienste sind auf Benutzer beschränkt, die mindestens 18 Jahre alt sind. Wir gestatten auf unserer Plattform keine Nutzer unter 18 Jahren und wir erfassen wissentlich keinerlei Daten von Minderjährigen. Falls Sie den Verdacht haben, dass einNutzer minderjährig ist, melden Sie dies bitte unter Verwendung des Meldemechanismus, der in unserem Dienst zur Verfügung steht.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                      TextSpan(
                      text:
                          '10.Änderungen der Datenschutzrichtlinie\n\nDa wir immer auf der Suche nach neuen und innovativen Wegen sind, um Sie bei der Etablierung bedeutungsvoller Verbindungen zu unterstützen, kann es mit der Zeit zu Änderungen der vorliegenden Datenschutzbestimmungen kommen. Wir informieren Sie, bevor irgendwelchen wesentlichen Änderungen in Kraft treten, so dass Sie Zeit haben, die Änderungen einzusehen.\n\n',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )),
                ],
              )),
            ),
          ],
        )));
  }
}
