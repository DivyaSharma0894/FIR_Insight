import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_i_rhome_model.dart';
export 'f_i_rhome_model.dart';

class FIRhomeWidget extends StatefulWidget {
  const FIRhomeWidget({Key? key}) : super(key: key);

  @override
  _FIRhomeWidgetState createState() => _FIRhomeWidgetState();
}

class _FIRhomeWidgetState extends State<FIRhomeWidget> {
  late FIRhomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FIRhomeModel());

    _model.fIRcontentsController ??= TextEditingController();
    _model.fIRcontentsFocusNode ??= FocusNode();

    _model.summaryFIRController ??= TextEditingController();
    _model.summaryFIRFocusNode ??= FocusNode();

    _model.secAndActsController ??= TextEditingController();
    _model.secAndActsFocusNode ??= FocusNode();

    _model.detailsOfFIRController ??= TextEditingController();
    _model.detailsOfFIRFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'FIR INSIGHT',
                        style: FlutterFlowTheme.of(context).headlineLarge,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/WhatsApp_Image_2024-01-17_at_11.20.35_578953cc-removebg-preview.png',
                          width: 230.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-01-17_at_11.23.38_ed5b420a-removebg-preview.png',
                    width: 174.0,
                    height: 74.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            actions: [],
            centerTitle: true,
            toolbarHeight: 100.0,
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              image: DecorationImage(
                fit: BoxFit.none,
                alignment: AlignmentDirectional(0.0, 0.0),
                image: Image.asset(
                  'assets/images/rajasthan-police-government-of-rajasthan-seeklogo.pdf__1_-removebg-preview_(1).png',
                ).image,
              ),
            ),
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 40.0, 20.0, 20.0),
                          child: Container(
                            width: 979.0,
                            height: 455.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            child: TextFormField(
                              controller: _model.fIRcontentsController,
                              focusNode: _model.fIRcontentsFocusNode,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Enter the contents of the FIR...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: null,
                              cursorColor: Color(0xFF6F61EF),
                              validator: _model.fIRcontentsControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'OR',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            setState(() {
                              _model.fIRcontentsController?.text =
                                  'न्यायालय श्रीमान न्यायिक मजिस्ट्रेट महोदय खेतड़ी राज. अनिता कुमारी पत्नी अरुण कुमार पुत्री श्री महिपाल सिंह उम्र 30 वर्ष जाति जाट निवासी रूडाराम की ढाणी ग्राम बडवासी तहसील नवलगढ़ जिला झुंझुनू राज. हाल आबाद चरण सिंह नगर तहसील खेतड़ी जिला झुंझुनू राज. मो.न. 8763269823 परिवादिया बनाम अरुण कुमार पुत्र श्री दयाराम दूत उम्र 33 वर्ष 2. दयाराम दूत पुत्र श्रीराम दूत उम्र 60 वर्ष 3. कमला देवी पत्नी दयाराम दूत उम्र 58 वर्ष 4. रोहित पुत्र दयाराम दूत उम्र 30 वर्ष जाति जाट निवासी रूडाराम की ढाणी ग्राम बडवासी तहसील नवलगढ़ जिला झुंझुनू राज. 5. ममता पुत्री दयाराम पत्नी अनिल जाति जाट उम्र 35 वर्ष निवासी गुढागोडजी ढाणी बिजारणीया की हुकमपुरा तहसील गुढा जिला झुंझुनू राज. अभियुक्तगण परिवाद पत्र अ.धारा 156 (3) जा.फौ. अपराध अ. धारा 498ए,406,323,341 भादसं मान्यवर महोदय परिवादिया की ओर से परिवाद पत्र निम्नलिखित प्रकार से पेश है 1.यह कि परिवादिया की विवाह अभियुक्त संख्या 1 के साथ दिनांक 24.05.2019 को हिन्दू रिति रिवाजों के अनुसार परिवादिया के पिता के घर अग्नी के समक्ष सप्तपदी की रस्म के साथ ग्राम चरणसिंह नगर में सम्पन्न हुई था। 2. यह कि विवाह में परिवादिया के पिता द्वारा अपनी हैसीयत से बढ़कर खर्चा किया गया था ताकि उसकी पुत्री ससुराल में राजी खुशी ससम्मान पूर्वक रह सके। विवाह में जो सामान व उपहार परिवादिया के पिता द्वारा दिये गये जिसकी सूची परिवाद पत्र के साथ अलग से संलग्न है जो परिवाद का भाग रहेगी। 3. यह कि परिवादिया विवाह के बाद अपने ससुराल आई तो अभियुक्तगण ने परिवादिया का नव विवाहिता के रूप में आदर सत्कार नहीं किया तथा अजीब व रूखा व्यवहार किया व परिवादिया के पति ने परिवादिया से ठीक ढंग से बात नहीं की व दूरी बनाये रखी तथा परिवादिया को ताने दिये कि तुम्हारे पिता ने हमे विवाह में एक लाख रूपये व स्वीफ्ट डिजायर गाड़ी नहीं दी । तथा परिवादिया से एक लाख रूपये व स्वीफ्ट डिजायर गाडी की मांग की और कहा कि कंगले घर की कहकर बेईज्जत किया और कहा कि काली कलुटी लडकी हमारे सिर पर बांध दी तथा परिवादिया के पिता व परिजनों को भी भला बुरा कहा जिससे परिवादिया को काफी दुख व ठेस पहुंची । जब परिवादिया फेर मोड़े अपने पिहर आई तो सारी बातें अपने माता पिता को बताई तो उन्होंने कहा कि समझा देंगे तथा धीरे धीरे सब ठीक हो जायेगा। और दुसरे दिन परिवादिया को पुनः ससुराल भेज दिया । 4. यह कि परिवादिया फेर मोडे पीहर जाकर वापस ससुराल आई परिवादिया के पति, सास, ससुर, देवर, ननद सभी एक लाख रूपये स्वीफ्ट डिजायर कार की दहेज की मांग को लेकर मारपीट करने लगे गाली गलौच करने लगे तथा भूखे कंगले घर की कहकर ताने मारने लगे। परिवादिया की सास आैर ननद उसके पति को बहकाती कि भूखे कंगले घर की लड़की ब्‍याह कर लाये हो हमारी समाज में नाक कटवा दी और अभियुक्त सं. 1 परिवादिया के साथ दहेज की मांग करता आैर मारपीट करता । परिवादिया का ससुर आर्मी से रिटायरमेंट है तथा घर पर ही रहता है तथा सारे दिन परिवादिया को ताने देते रहता है गाली गलौच करता रहता है तथा परिवादिया के पीहर वालों से भी दहेज की माँग करता रहता था। तथा परिवादिया को शारीरिक व मानसिक रूप से प्रतावित करते व क्रुरता कारित करते बात बात पर ताना मारते छोटे छोटे कामों में नुक्‍स निकालते रहते थे छोटी सी बात पर गुस्सा करते तथा परिवादिया को दुत्कारते रहते तथा परिवादिया के साथ नोकरानी जैसा व्यवहार करते व मारपीट करते। तथा जब परिवादिया दूसरी बार ससुराल गई तो उसकी सास व ननद ने उसके समस्त जेवरात छीन कर अपने पास रख लिये तथा पहनने हेतु मांगने पर भी नहीं दिये तथा परिवादिया का पति परिवादिया के साथ रहता तब भी काफी दिनों तक बात नहीं करता तथा परिवादिया जब बोलती तो गुस्सा करके मारपीट करने पर उतारू हो जाता । 5. यह कि परिवादिया पढ़ी लिखी शान्त स्वभाव की महिला है जो अपने ससुराल आती जाती रही व अपने स्त्रीधर्म का पालन करती रही तथा इसके चलते वह अपने पति के अंश से गर्भवती हो गई जब परिवादिया वरिष्ठ अध्यापक के पद पर राजसमन्‍द में सेवारत थी तब परिवादिया के डिलेवरी होने वाली थी तब उसने अपने पति को बुलाया तो उसका पति उसके पास गया व उसे उसी पोजिसन में वहां छोड़कर वापस आ गया तथा दिनांक 11.09.2022 को ऑपरेशन से एक पुत्री का जन्म हुआ जिसका नाम दिव्यांशी है। परिवादिया के पुत्री होने पर अभियुक्तगण कहने लगे कि हम लड़की का छुछक मंगवायेंगे तथा तेरे माता पिता को बोल कि छुछक में एक लाख रूपये व शिवफ्ट गाडी दे । परिवादिया ने अभियुक्तगण को समझाते हुए कहा कि मेरे परिजन आपकी इतनी बड़ी दहेज की मांग पूरी नहीं कर सकते तो इस पर नाराज हो गये तथा परिवादिया की डिलेवरी पिरियड में भी अच्छी तरह से देखभाल नहीं की। ना ही बच्ची की देखभाल की तथा परिवादिया को अकेली को कमरे में बन्द कर देते। 6. यह कि परिवादिया के पीहर वालों ने परिवादिया के पुत्री के छुछक में खूब सारा सामान दिया उपहार दिया तो उनको देखकर भी अभियुक्तगण खुश नहीं हुए तथा कहा कि छुछक में एक लाख रूपये व स्पीफ्ट डिजायर कार नहीं लाये । तथा परिवादिया के परिजनो के साथ अभद्र व्यवहार किया तथा उसके बाद अभियुक्तगण परिवादिया के साथ और अधिक क्रुरतापूर्ण व्यवहार करने लगे। परिवादिया के पुत्री ऑपरेशन से हुई थी तथा डाक्टर ने भी 6 माह आराम करने के लिये सुझाव दिया था लेकिन अभियुक्तगण परिवादिया से एक माह बाद से ही घर का सारा काम झाडू,पोचा, बर्तन, खाना व कपडे साफ करवाना आदि करवाना शुरू कर दिया व सारे दिन काम के लगाये रखते समय पर खाना नहीं खाने देते व ना ही आराम करने देते तथा जबरदस्ती घर पर अनावश्यक कार्य करवाते, भूखी प्यासी रखने व ना ही किसी से बाते करने देते। 7. यह कि परिवादिया सन् 2018 से वरिष्ठ अध्यापक के पद पर नौकरी कर रही है। वर्तमान मे राजकीय बालिका उच्च प्राथमिक विद्यालय मांडासी में कार्यरत है। वहां भी अभियुक्तगण किसी न किसी व्यक्तियों को भेजकर मानसिक रूप से परेशान करता है । 10 यह कि परिवादिया का पति अन्य कई लडकियों से फोन पर घंटो बातें करता रहता है। जब परिवादिया पूछती कि किससे बातें करते हो तो वह परिवादिया से मारपीट करता और धमकाता कि मेरी बातें में दखल मत दो मुझे आजादी का जीवन जीना है जिससे चाहे बात करूं जिसके साथ चाहूं उसके साथ रहूं। परिवादिया के साथ आये दिन लगातार मारपीट करता रहता है तथा शारीरिक व मानसिक रुप से प्रताड़ित करता। 11. यह कि परिवादिया ने अभियुक्‍तगण की शिकायत कई बार अपने परिजनों को की तो उसके परिजनों ने अभियुक्‍तगण को कई बार समझाया लेकिन उनके व्‍यवहार में कोई बदलाव नहीं आया तथा वे हमेशा परिवादिया के साथ दहेज की मांग को लेकर मारपीट करते रहते व भूखी प्‍यासी रखते तथा परिवादिया के कार्य स्‍थल पर जाकर भी उसको अपमानित करते व उसका समस्‍त वेतन छीन लेते व बार बार उस पर दबाव बनाते की तेरे वेतन पर लोन लेकर हमें प्‍लाट खरीद कर दे। 12. यह कि परिवादिया जब भी अपने ससुराल रहती तो उसे सभी अभियुक्‍तगण ताने देते रहते समय पर खाना नहीं देते तथा बार बार धमकी देते कि तेरे घर वालों से हमें एक लाख रुपये व स्‍वीफट गाड़ी नहीं लाकर देगी व तेरे वेतन से लोन लेकर प्‍लाट खरीद कर नहीं देगी तेरे साथ इसी प्रकार का व्‍यवहार किया जायेगा तथा मई 2023 माह में परिवादिया अपने ससुराल आई तो वहां सभी अभियुक्तगण ने एक राय होकर परिवादिया के साथ दहेज की मांग करते हुए मारपीट करते हुये मारपीट कर पहने हुये कपड़ो में उसकी पुत्री सहित घर से निकाल दिया व धमकी दी कि जब तक हमारी मांग पूरी नहीं होगी तेरे को नहीं रखेंगे तथा हमारी मांग पूरी नहीं करने पर तेरे को तलाक देकर अभियुक्त सं. 1 का दूसरा विवाह करेंगे । 17. यह कि अभियुक्तगण का उक्त कृत्य धारा 498ए, 406, 323, 341, 504 भादसं. के तहत दण्डनीय अपराध है। अतः परिवाद पत्र पेश कर निवेदन है कि परिवाद पत्र धारा 156 (3) जाफौ. में पुलिस थाना खेतडीनगर को भिजवाया जाकर अभियुक्तगण के खिलाफ मुकदमा दर्ज करवाया जाने की कृपा करेु एवं बाद जांच कानूनी सजा दिये जाने की कृपा करें तथा परिवादिया का सूची में दर्ज स्‍त्रीधन बरामद कर दिलवाया जाने की कृपा करें। दिनांक 9.10.23 एसडी अनिता परिवादिया अनिता कुमारी पत्‍नी अरुण कुमार पुत्री श्री महीपालसिंह उम्र 30 वर्ष जाति जाट निवासी रुड़ाराम की ढाणी ग्राम बड़वासी तहसील नवलगढ जिला झुन्‍झुनूं राज. हाल आबाद चरणसिंह नगर तहसील खेतड़ी जिला झुन्‍झुनूं राज. दिनांक 13.10.2023 परिवादिया मय अधिवक्ता श्री सुभाष दाधीच उपस्थित। तथ्यात्मक रिपोर्ट का अवलोकन किया गया। किसी प्रकार का कोई प्रकरण दर्ज होना नहीं पाया गया। अवलोकन किया गया। संलग्न पत्रावली रहे। परिवादी व परिवादी के अधिवक्ता को सुना गया। परिवाद पत्र में प्रथम दृष्टया संज्ञेय अपराध बनना प्रतीत होता है। अतः यह परिवाद पत्र वास्ते अनुसंधान अंतर्गत धारा 156 (3) सी आर पी सी के तहत संबंधित थानाधिकारी पुलिस थाना खेतड़ीनगर को भेजा जाना न्यायोचित है। अतः यह परिवाद पत्र वास्ते अनुसंधान अन्‍तर्गत धारा 156 (3) सी आर पी सी भेज कर आदेशित किया जाता है कि नियमानुसार नतीजा अनुसंधान न्यायालय में अविलंब पेश किया जावे। नतीजा पेश होने पर संबंधित कागजात संलग्न किया जावे। एसडी (दीपक कुमार) न्यायिक मजिस्ट्रेट खेतड़ी, (राज.) कार्यवाही पुलिस प्रमाणित किया जाता है कि उक्‍त टाईपशुदा ईस्‍तगासा जरिये डाक माननीय न्‍यायालय श्रीमान न्‍यायिक मजिस्‍ट्रेट महोदय खेतडी से अन्‍तर्गत धारा 156(3) सीआरपीसी मे प्रार्थीया अनिता कुमारी पत्नी अरुण कुमार पुत्री श्री महिपाल सिंह उम्र 30 वर्ष जाति जाट निवासी रूडाराम की ढाणी ग्राम बडवासी तहसील नवलगढ़ जिला झुंझुनू राज. हाल आबाद चरण सिंह नगर पुलिस थाना खेतडीनगर का प्राप्‍त हुआ मजमून ईस्‍तगासा से मामला जुर्म धारा 498ए,406,323,341 भादस का वकु मे आना पाया जाने पर जुर्म धारा उपरोक्‍त मे प्रकरण दर्ज कर मन थानाधिकारी गोपाल सिह उनि मशरुफ तफतीश हुआ। ';
                            });
                          },
                          text: 'Upload A Document(pdf/png)',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        _model.summaryFIRController?.text =
                            '20 जुलाई, 2023 को 10:00 बजे, खेतड़ीनगर थाना, झुंझुनू जिला, राजस्थान में थानाधिकारी गोपाल सिंह द्वारा प्राप्त शिकायत के आधार पर एक दहेज उत्पीड़न के मामले का FIR दर्ज किया गया है। महत्वपूर्ण विवरण:  जिला: झुंझुनू पुलिस स्टेशन: खेतड़ीनगर वर्ष: 2023 FIR संख्या: अभी तक नहीं प्राप्त FIR दर्ज करने की तारीख और समय: 20 जुलाई, 2023, 10:00 बजे आपराधिक धाराएँ और अधिनियम: दहेज उत्पीड़न अपराध का हुआ: 24 मई, 2019 को शादी के दौरान थाना में सूचना प्राप्त हुई: 20 जुलाई, 2023, 10:00 बजे सूचना प्राप्त करने का प्रकार: लिखित घटना का स्थान: रूडाराम की ढाणी, बडवासी, झुंझुनू शिकायतकर्ता अनिता कुमारी के विवरण:  नाम: अनिता कुमारी  पिता का नाम: अरुण कुमार  जन्मतिथि: (जानकारी नहीं दी गई)  UID: (जानकारी नहीं दी गई)  पासपोर्ट नंबर: (जानकारी नहीं दी गई)  ID विवरण: (जानकारी नहीं दी गई)  व्यापार: (जानकारी नहीं दी गई)  फ़ोन नंबर: 8763269823  पता: चरण सिंह नगर, खेतड़ी तहसील, झुंझुनू जिला, राजस्थान  आपराधिक धाराएँ और अधिनियम: दहेज उत्पीड़न के तहत धारा (जानकारी नहीं दी गई)';
                      });
                      setState(() {
                        _model.secAndActsController?.text =
                            'धारा 498A - पति या पति के परिवार द्वारा स्त्री के प्रति उत्पीड़न का आरोप धारा 406 - स्त्री द्वारा मांगे गए दहेज की चीजों का अवैध अपहरण धारा 323 - स्त्री के प्रति शारीरिक हमला धारा 504 - आपराधिक अपमान';
                      });
                      setState(() {
                        _model.detailsOfFIRController?.text =
                            'FIR संख्या: (जानकारी नहीं दी गई) थाना: खेतड़ीनगर दर्ज करने की तारीख: 20 जुलाई, 2023 आपराध: दहेज उत्पीड़न शिकायतकर्ता: अनिता कुमारी आपराधिक धाराएँ: धारा 498A, 406, 323, 504 इस सूचना के आधार पर एक FIR संपन्न किया गया है, जिसमें अभियुक्त अरुण कुमार द्वारा दहेज उत्पीड़न के मामले में कार्रवाई की';
                      });
                    },
                    text: 'Start Processing',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            width: 742.0,
                            height: 205.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            child: TextFormField(
                              controller: _model.summaryFIRController,
                              focusNode: _model.summaryFIRFocusNode,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Summary of the FIR...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: null,
                              cursorColor: Color(0xFF6F61EF),
                              validator: _model.summaryFIRControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 575.0,
                              height: 165.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: TextFormField(
                                controller: _model.secAndActsController,
                                focusNode: _model.secAndActsFocusNode,
                                autofocus: true,
                                textCapitalization: TextCapitalization.none,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF606A85),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintText: 'Sections and Acts......',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF606A85),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 16.0, 12.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF15161E),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                maxLines: null,
                                cursorColor: Color(0xFF6F61EF),
                                validator: _model.secAndActsControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: 921.0,
                        height: 159.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        child: TextFormField(
                          controller: _model.detailsOfFIRController,
                          focusNode: _model.detailsOfFIRFocusNode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Details of the FIR.......',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 12.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          maxLines: 16,
                          minLines: 6,
                          cursorColor: Color(0xFF6F61EF),
                          validator: _model.detailsOfFIRControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue ??= false,
                          onChanged: (newValue) async {
                            setState(() => _model.checkboxValue = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      Text(
                        'I Verify that all the details here are correct.',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Upload the FIR',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
