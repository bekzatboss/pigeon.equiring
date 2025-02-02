import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'public_offer_page_model.dart';
export 'public_offer_page_model.dart';

class PublicOfferPageWidget extends StatefulWidget {
  const PublicOfferPageWidget({super.key});

  @override
  State<PublicOfferPageWidget> createState() => _PublicOfferPageWidgetState();
}

class _PublicOfferPageWidgetState extends State<PublicOfferPageWidget> {
  late PublicOfferPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PublicOfferPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'publicOfferPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.33,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                11.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'PUBLIC_OFFER_Icon_mftw6uk9_ON_TAP');
                                logFirebaseEvent('Icon_navigate_back');
                                context.safePop();
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Pigeon',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(22.0, 22.0, 22.0, 22.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Оферта (Пользовательское соглашение)\n\n1. Общие положения  \n1.1. Данное соглашение является публичной офертой (далее – «Оферта»), устанавливающей правила использования мобильного приложения Pigeon (далее – «Приложение»).  \n1.2. Pigeon является платформой для поиска курьеров, соединяющей отправителей (лиц, передающих отправления) и исполнителей (лиц, выполняющих доставку).  \n1.3. Приложение не предоставляет собственных курьеров и не несет ответственности за качество и своевременность доставки.  \n1.4. Использование Приложения означает безоговорочное принятие данной Оферты.  \n\n2. Функционал и ответственность  \n2.1. Pigeon является исключительно посредником, предоставляющим технологическую платформу для взаимодействия пользователей. Приложение не является логистической компанией и не несет ответственности за:  \n   - Качество, безопасность, законность и сохранность отправлений.  \n   - Действия пользователей, включая выполнение или невыполнение обязательств.  \n   - Физические финансовые расчеты между пользователями.  \n\n2.2. Пользователи обязаны самостоятельно проверять законность перевозимого груза и не использовать сервис для передачи запрещенных предметов.  \n\n3. Стоимость доставки  \n3.1. Стоимость доставки определяется пользователями и может варьироваться в зависимости от:  \n   - Расстояния между пунктами отправки и получения.  \n   - Весовых и габаритных характеристик отправления.  \n   - Сроков и условий доставки.  \n\n3.2. Приложение не регулирует стоимость услуг и не вмешивается в процесс согласования условий между пользователями.  \n\n4. Взносы и платежи \n4.1. За использование сервиса с пользователей взимается взнос в размере 20% от суммы сделки между отправителем и исполнителем.  \n4.2. Оплата осуществляется через интернет-эквайринг с использованием банковских карт Visa и MasterCard.  \n4.3. Все транзакции защищены стандартами безопасности PCI DSS и 3-D Secure.  \n\n5. Баланс и вывод средств \n5.1. В Pigeonпредусмотрен внутренний баланс который пополняется через интернет-эквайринг.  \n5.2. Для вывода средств с баланса необходимо:  \n   - Перейти в раздел \"Личный кабинет\".  \n   - Указать сумму вывода.  \n   - Нажать кнопку \"Вывести\".  \n   - Указать карту, на которую должен быть осуществлен перевод.  \n5.3. Вывод средств осуществляется на банковскую карту пользователя. Сроки зачисления зависят от условий банка-эмитента.  \n\n6. Отказ от гарантий и ограничение ответственности  \n6.1. Приложение предоставляется \"как есть\", без каких-либо явных или подразумеваемых гарантий.  \n6.2. Администрация Pigeon не несет ответственности за прямые или косвенные убытки, возникшие в результате использования или невозможности использования сервиса.  \n6.3. В случае возникновения спорных ситуаций пользователи решают их самостоятельно.  \n\n7. Заключительные положения  \n7.1. Администрация Pigeon оставляет за собой право изменять условия Оферты ез предварительного уведомления.  \n7.2. Продолжение использования Приложения после внесения изменений означает согласие с обновленными условиями.  \n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
