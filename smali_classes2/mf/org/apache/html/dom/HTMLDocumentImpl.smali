.class public Lmf/org/apache/html/dom/HTMLDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "HTMLDocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLDocument;


# static fields
.field private static final _elemClassSigHTML:[Ljava/lang/Class;

.field private static _elementTypesHTML:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = 0x3b7a30e3bf92ceecL


# instance fields
.field private _anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _writer:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    invoke-static {}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementTypes()V

    return-void
.end method

.method private getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p2, Lmf/org/w3c/dom/Element;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lmf/org/w3c/dom/Element;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_0
.end method

.method private static populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "org.apache.html.dom."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lmf/org/apache/html/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTM019 OpenXML Error: Could not find or execute class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " implementing HTML element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized populateElementTypes()V
    .locals 3

    const-class v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    const-string v1, "A"

    const-string v2, "HTMLAnchorElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APPLET"

    const-string v2, "HTMLAppletElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AREA"

    const-string v2, "HTMLAreaElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BASE"

    const-string v2, "HTMLBaseElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BASEFONT"

    const-string v2, "HTMLBaseFontElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BLOCKQUOTE"

    const-string v2, "HTMLQuoteElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BODY"

    const-string v2, "HTMLBodyElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BR"

    const-string v2, "HTMLBRElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUTTON"

    const-string v2, "HTMLButtonElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DEL"

    const-string v2, "HTMLModElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIR"

    const-string v2, "HTMLDirectoryElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIV"

    const-string v2, "HTMLDivElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DL"

    const-string v2, "HTMLDListElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FIELDSET"

    const-string v2, "HTMLFieldSetElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FONT"

    const-string v2, "HTMLFontElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FORM"

    const-string v2, "HTMLFormElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FRAME"

    const-string v2, "HTMLFrameElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FRAMESET"

    const-string v2, "HTMLFrameSetElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HEAD"

    const-string v2, "HTMLHeadElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H1"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H2"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H3"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H4"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H5"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "H6"

    const-string v2, "HTMLHeadingElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HR"

    const-string v2, "HTMLHRElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTML"

    const-string v2, "HTMLHtmlElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IFRAME"

    const-string v2, "HTMLIFrameElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IMG"

    const-string v2, "HTMLImageElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INPUT"

    const-string v2, "HTMLInputElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INS"

    const-string v2, "HTMLModElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ISINDEX"

    const-string v2, "HTMLIsIndexElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LABEL"

    const-string v2, "HTMLLabelElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LEGEND"

    const-string v2, "HTMLLegendElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LI"

    const-string v2, "HTMLLIElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LINK"

    const-string v2, "HTMLLinkElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MAP"

    const-string v2, "HTMLMapElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MENU"

    const-string v2, "HTMLMenuElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "META"

    const-string v2, "HTMLMetaElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OBJECT"

    const-string v2, "HTMLObjectElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OL"

    const-string v2, "HTMLOListElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPTGROUP"

    const-string v2, "HTMLOptGroupElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPTION"

    const-string v2, "HTMLOptionElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "P"

    const-string v2, "HTMLParagraphElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PARAM"

    const-string v2, "HTMLParamElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PRE"

    const-string v2, "HTMLPreElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Q"

    const-string v2, "HTMLQuoteElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SCRIPT"

    const-string v2, "HTMLScriptElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SELECT"

    const-string v2, "HTMLSelectElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "STYLE"

    const-string v2, "HTMLStyleElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TABLE"

    const-string v2, "HTMLTableElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CAPTION"

    const-string v2, "HTMLTableCaptionElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TD"

    const-string v2, "HTMLTableCellElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TH"

    const-string v2, "HTMLTableCellElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "COL"

    const-string v2, "HTMLTableColElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "COLGROUP"

    const-string v2, "HTMLTableColElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TR"

    const-string v2, "HTMLTableRowElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TBODY"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "THEAD"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TFOOT"

    const-string v2, "HTMLTableSectionElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TEXTAREA"

    const-string v2, "HTMLTextAreaElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TITLE"

    const-string v2, "HTMLTitleElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UL"

    const-string v2, "HTMLUListElementImpl"

    invoke-static {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 3

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    sget-object p1, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    sget-object p2, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    new-instance v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    :cond_0
    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTM15 Tag \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' associated with an Element class that failed to construct.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLElementImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public getAnchors()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_anchors:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getApplets()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_applets:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public declared-synchronized getBody()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLBodyElement;

    if-nez v3, :cond_1

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLFrameSetElement;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v3

    goto :goto_2

    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v2, Lmf/org/w3c/dom/html/HTMLElement;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :cond_4
    new-instance v1, Lmf/org/apache/html/dom/HTMLBodyElementImpl;

    const-string v2, "BODY"

    invoke-direct {v1, p0, v2}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    check-cast v1, Lmf/org/w3c/dom/html/HTMLElement;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;

    const-string v1, "HTML"

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v2

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLHtmlElement;

    if-eqz v1, :cond_2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getElementsByName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lmf/org/apache/html/dom/NameNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/html/dom/NameNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getForms()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_forms:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public declared-synchronized getHead()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLHeadElement;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    if-ne v2, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v2, v3

    goto :goto_2

    :cond_3
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v1, Lmf/org/w3c/dom/html/HTMLElement;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :cond_4
    new-instance v1, Lmf/org/apache/html/dom/HTMLHeadElementImpl;

    const-string v2, "HEAD"

    invoke-direct {v1, p0, v2}, Lmf/org/apache/html/dom/HTMLHeadElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    check-cast v1, Lmf/org/w3c/dom/html/HTMLElement;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImages()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_images:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getLinks()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getBody()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_links:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/html/HTMLTitleElement;

    invoke-interface {v0}, Lmf/org/w3c/dom/html/HTMLTitleElement;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    :cond_0
    return-void
.end method

.method public declared-synchronized setBody(Lmf/org/w3c/dom/html/HTMLElement;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v1

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "BODY"

    invoke-virtual {p0, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-nez v1, :cond_0

    :try_start_3
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_6
    instance-of v3, v1, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_2

    if-eq v1, v2, :cond_1

    invoke-interface {v0, p1, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v2}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_1
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_9
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1

    :cond_3
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getHead()Lmf/org/w3c/dom/html/HTMLElement;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, v0, :cond_0

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    check-cast v1, Lmf/org/w3c/dom/html/HTMLTitleElement;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lmf/org/apache/html/dom/HTMLTitleElementImpl;

    const-string v2, "TITLE"

    invoke-direct {v1, p0, v2}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lmf/org/w3c/dom/html/HTMLTitleElement;

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
