# This file is used to store the page objects of all the pages

# Login page elements
txtaris = "//div[@class = 'aris-global']"
txtls = "//div[@class = 'life-sphere']"
txtagls = "//*[@id='login-box']/div[1]"
loginapps = "//div[@class='apps']"
usernamefield = "//form[@id='loginForm']/label[contains(text(),'User Name')]//following-sibling::input[@id='userNameTxt']"
passwordfield = "//form[@id='loginForm']/label[contains(text(),'Password')]//following-sibling::input[@id='passwordTxt']"
login_button = "//*[@id='loginForm']/div[1]/div/button"
loginpgagimg = "//div[@id='logo']"
forgotpwd = "//a[contains(text(),'Forgot Password?')]"
privacypolicy = "//a[contains(text(),'Privacy Policy')]"
arislink = "//a[contains(text(),'www.ArisGlobal.com')]"
loginfooter = "//*[@id='footer-box']"
dropdownlist = "//select[@id='agl-profile-switcher']/option"
dropdownelement = "//select[@id='agl-profile-switcher']"

# Dashboard page elements
# Periodic performance tab elements - PDF Extraction
DashboardLandingpagetitle = "AI/ML Admin"
DashboardLandingPage = "//td[contains(.,'Periodic Performance')]"
drpimgservicetype = "//img[@id='trg_C9_12']"
drpimgscoretype = "//img[@id='trg_C9_26']"
drpimgformtype = "//input[@id='C9_40']/following-sibling::img"
drpimgperiod = "//img[@id='trg_C9_28']"
servicetypeval = "//div[@id='cmb_C9_12_menuCnt']/label[3]"
servicetypeelements = "//div[@id='cmb_C9_12_menuCnt']/label"
inputservicetype = "//input[@id='C9_12']/img[@id='trg_C9_12']"
inputscoretype = "//input[@id='C9_26']"
scoretypeelements = "//div[@id='cmb_C9_26_menuCnt']//div[@name='cmb_chkC9_26']"
periodelements = "//div[@id='cmb_C9_28_menuCnt']/label"
formtypeelements = "//div[@id='cmb_C9_40_menuCnt']//div[@name='cmb_chkC9_40']"
inputperiod = "//input[@id='C9_28']"
inputformtype = "//input[@id='C9_40']"
btngenerate = "//button[@id='C9_24-btn']"

# Attribute Performance tab elements - PDF Extraction
tabattperf = "//*[@id='C2-C10']//td[contains(.,'Attribute Performance')]"
tabformtypeperformance = "//*[@id='C2-C10']//td[contains(.,'Form Type Performance')]"
casetypeattperf = "//table[@id='C10_9_formCont']//span[contains(.,'Case Type')]"
drpimgservicetypeattperf = "//*[@id='trg_C10_12']"
servicetypeelementsattperf = "//div[@id='cmb_C10_12_menuCnt']/label"
drpimgscoretypeattperf = "//*[@id='trg_C10_26']"
scoretypeelementsattperf = "//div[@id='cmb_C10_26_menuCnt']//div[@name='cmb_chkC10_26']"
drpimgperiodattperf = "//*[@id='trg_C10_28']"
periodelementsattperf = "//div[@id='cmb_C10_28_menuCnt']/label"
drpimgformtypeattperf = "//*[@id='trg_C10_44']"
formtypeelementsattperf = "//div[@id='cmb_C10_44_menuCnt']/label"
btngenerateattperf = "//*[@id='C10_24-btn']"



# Performance Monitoring Page elements
tabperformancemonitoring = "//*[@id='menucontainer']//a[contains(.,'Performance Monitoring')]"
servicetypeattributeperf = "//*[@id='C6_4-cont']//span[contains(.,'Service Type')]"
tabperformancemonitorqueue = "//*[@id='C1-C5']//td[contains(.,'Performance Monitor Queue')]"
jobid = "//*[@id='C5_1tbl']//span[1][contains(.,'Job Id')]"

# Configuration page elements
tabconfiguration = "//td[@id='menucontainer']//a[contains(.,'Configuration')]"
tabNLPSettings = "//div[@id='C2-tab-base']//span[contains(.,'NLP Settings')]"
tabPDFExtSettings = "//div[@id='C2-tab-base']//span[contains(.,'PDF Extraction Settings')]"
tabMLSettings = "//div[@id='C2-tab-base']//span[contains(.,'ML Settings')]"
tabPerfMonSettings = "//div[@id='C2-tab-base']//span[contains(.,'Performance Monitoring Settings')]"
tabModelManSettings = "//div[@id='C2-tab-base']//span[contains(.,'Model Management Settings')]"

# Reports page elements
tabreports = "//td[@id='menucontainer']//a[contains(.,'Reports')]"
reportsbreadcrumb = "//div[@id='breadcrumb']//a[contains(.,'Reports')]"
reportdefs = "//div[@id='ext-gen31']//span[contains(text(),'Report Definitions')]"
savedreports = "//div[@id='ext-gen31']//span[contains(text(),'Saved Reports')]"
generatedreports = "//div[@id='ext-gen31']//span[contains(text(),'Generated Reports')]"
warningmsg = "//div[contains(text(),'Warning Messages')]"
btnok = "//*[@id='gl-error-ok-btn']"

# Model Management page elements
tabmodelmanagement = "//td[@id='menucontainer']//a[contains(.,'Model Mangement')]"
modelmangbreadcrumb = "//div[@id='breadcrumb']//a[contains(.,'Model Mangement')]"
modellisting = "//div[@id='C3-tab-base']//td[contains(text(),'Model Listing')]"
modeljobqueue = "//div[@id='C3-tab-base']//td[contains(text(),'Model Job Queue')]"

# Resource page elements
tabresource = "//td[@id='menucontainer']//a[contains(.,'Resource')]"
tabnlp = "//div[@id='C1-tab-base']//td[contains(text(),'NLP')]"
tabpdfextraction = "//div[@id='C1-tab-base']//td[contains(text(),'PDFExtraction')]"
tabclientappqueries = "//div[@id='C1-tab-base']//td[contains(text(),'Client Application Queries')]"
lnkclientappqueries = "//div[@id='C11_2root']//span[contains(.,'Client Application Queries')]"

# Service Logs page elements
tabservicelogs = "//td[@id='menucontainer']//a[contains(.,'Service Logs')]"
servicename = "//td[@id='C2-cont']//span[contains(text(),'Service Name ')]"
startdate = "//td[@id='C2-cont']//span[contains(text(),'Start Date ')]"
enddate = "//td[@id='C2-cont']//span[contains(text(),'End Date ')]"

# Test Services page elements

# NLP Service elements
tabtestservices = "//td[@id='menucontainer']//a[contains(.,'Test Services')]"
nlpservice = "//div[@id='C37-tab-base']//td[contains(.,'NLP Service')]"
radiobtns = "//*[@id='C63-cont']//label[@class='ag-check-label ']"
radiohybrid = "//*[@id='C63_2']/following::label[contains(.,'HYBRID')]"
radioml = "//*[@id='C63_1']/following::label[contains(.,'ML')]"
radiorbs = "//*[@id='C63_0']/following::label[contains(.,'RBS')]"
drpimgsummarytype = "//*[@id='trg_C85']"
summarytypeelements = "//*[@id='cmb_C85_menuCnt']/label"
sampledatatextarea = "//*[@id='C47']"
sendtonlp = "//*[@id='C48-btn']"
summarytype = "//*[@id='cmb_C85_menuCnt']/label"
sampledata = "//*[@id='C47']"
btnsendtonlp = "//*[@id='C48-btn']"
popupafternlp = "//div[@class = 'agl-info-box']"
btndownload = "//*[@id='C67-btn']"

# PDF Extractor Service elements
btnbrowse = "//*[@id='C75_bb-btn']"
btndownloadpdf = "//*[@id='C78-btn']"
pdfextlabel = "//*[@id='C73-C74']//td[contains(text(), 'PDF Extractor Service')]"
popupsendtopdf = "//div[@class = 'agl-info-box']"
popupclose = "//*[@class='agl-info-box-close']"
btnsendtopdf = "//*[@id='C76-btn']"

# Relevancy Service elements
relevancylabel = "//*[@id='C80-C81']//td"
litabslabel = "//*[@id = 'C83-cont']//span[contains(.,'Literature Abstract')]"
btnsendtorelevancy = "//*[@id='C84-btn']"
litabstextarea = "//*[@id='C83']"
reloutputtext = "//*[@id='agl-infomsg-cont']/div[2]/text()"
popupreloutput = "//*[@id='agl-infomsg-cont']/div[2]"

# AIEncoder Service elements
findcoordlabel = "//*[@id='C103-C111']//td"
inpverbatimterm = "//*[@id='C96']"
btnsendtoaiencoder = "//*[@id='C97-btn']"
popupencoderoutput = "//*[@id='agl-infomsg-cont']/div[2]"
btndownloadencoder = "//*[@id='C100-btn']"
aiencoderlabel = "//*[@id='C94-C95']//td"
verbatimtermlabel = "//*[@id='C96-cont']//span[contains(.,'Verbatim Term')]"

# Causality Service elements
causalitylabel = "//*[@id='C121-C122']//td"
btncustom = "//*[@id='C141_1']"
btnsendtocausality = "//*[@id='C132-btn']"
causalityfiletype = "//*[@id='C141-cont']//span"
radiodefault = "//label[contains(text(),'DEFAULT')]//preceding::input[@type='radio' and @id='C141_0']"
radiocustom = "//label[contains(text(),'CUSTOM')]//preceding::input[@type='radio' and @id='C141_1']"
mlcheckbox = "//*[@id='C145_boxLabel']//preceding::input[@type='checkbox' and @id='C153']"
causalityassesslabel = "//*[@id='C145-cont']/label"
causalcheckboxes = "//*[@id='C122_formCont']//input[@type='checkbox']"
uploadjson = "//*[@id='C123-cont']//span"
btnbrowsecausality = "//*[@id='C123_bb-btn']"

# FDF page elements
tabfdf = "//td[@id='menucontainer']//a[contains(.,'FDF')]"
fdflisting = "//div[@id='C1-tab-base']//td[contains(text(),'Field Definition Form Listing')]"

# Threshold Configuration page elements
tabthresholdconfig = "//td[@id='menucontainer']//a[contains(.,'Threshold Configuration')]"
txtthresholdconfig = "//div[@id='C1-header']//span[contains(text(),'NLP Threshold Configuration')]"

# Codelist page elements
tabcodelist = "//td[@id='menucontainer']//a[contains(.,'Codelist')]"
codelistmenu = "//*[@id='codeListGroup']/ul/li[1]/a[contains(.,'Codelist')]"
lnkcodelistmenu = "//*[@id='aimladmin_thresholdConfiguration']//li[@class='sub-item']/a"
codelistmenulink = "(//a[contains(text(),'Codelist')])[2]"
codelistmenulink2 = "//li[@class='sub-item hover']//a[contains(text(),'Codelist')]"
partnercodelistmenu = "//*[@id='codeListGroup']/ul/li[2]/a"
lnkpartnercodelistmenu = "//a[contains(.,'Partner Codelist')]"
codelistreadcrumb = "//div[@id='breadcrumb']//a[contains(.,'Codelist')]"
partnercodelistreadcrumb = "//div[@id='breadcrumb']//a[contains(.,'Partner Codelist')]"

# SignOut elements
iconuserdetails = "//img[@id='agl-user-icn']"
signout = "//div[contains(text(),'Sign Out')]"
signoutconfirmyes = "//button[@id='agl-confirm-yes']"
popupcontainer = "//div[@id='popup_container']"
confirmpopup = "//span[@id='ui-id-2']"
loginpopupyes = "//*[@id='popup_ok']"
loginpopupno = "//*[@id='popup_cancel']"
msgconfirmpopup = "//*[@id='popup_message']"
errpopup = "//div[@id='agl-msg-container']"