.class public final Lmf/org/apache/xml/serialize/HTMLdtd;
.super Ljava/lang/Object;
.source "HTMLdtd.java"


# static fields
.field private static final ALLOWED_HEAD:I = 0x20

.field private static final CLOSE_DD_DT:I = 0x80

.field private static final CLOSE_P:I = 0x40

.field private static final CLOSE_SELF:I = 0x100

.field private static final CLOSE_TABLE:I = 0x200

.field private static final CLOSE_TH_TD:I = 0x4000

.field private static final ELEM_CONTENT:I = 0x2

.field private static final EMPTY:I = 0x11

.field private static final ENTITIES_RESOURCE:Ljava/lang/String; = "HTMLEntities.res"

.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field private static final ONLY_OPENING:I = 0x1

.field private static final OPT_CLOSING:I = 0x8

.field private static final PRESERVE:I = 0x4

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

.field private static _boolAttrs:Ljava/util/Hashtable;

.field private static _byChar:Ljava/util/Hashtable;

.field private static _byName:Ljava/util/Hashtable;

.field private static _elemDefs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    const-string v0, "ADDRESS"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "AREA"

    const/16 v2, 0x11

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "BASE"

    const/16 v3, 0x31

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "BASEFONT"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "BLOCKQUOTE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "BODY"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "BR"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "COL"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "COLGROUP"

    const/16 v4, 0x20a

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "DD"

    const/16 v5, 0x89

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "DIV"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "DL"

    const/16 v6, 0x42

    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "DT"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "FIELDSET"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "FORM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "FRAME"

    const/16 v5, 0x19

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H1"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H2"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H3"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H4"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H5"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "H6"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "HEAD"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "HR"

    const/16 v5, 0x51

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "HTML"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "IMG"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "INPUT"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "ISINDEX"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "LI"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "LINK"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "MAP"

    const/16 v5, 0x20

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "META"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "OL"

    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "OPTGROUP"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "OPTION"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "P"

    const/16 v1, 0x148

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "PARAM"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "PRE"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "SCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "NOSCRIPT"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "SELECT"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "STYLE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TABLE"

    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TBODY"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TD"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TEXTAREA"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TFOOT"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TH"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "THEAD"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TITLE"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "TR"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string v0, "UL"

    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    const-string v0, "AREA"

    const-string v1, "href"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BUTTON"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DIR"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FRAME"

    const-string v1, "noresize"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HR"

    const-string v1, "noshade"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IMAGE"

    const-string v1, "ismap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INPUT"

    const-string v1, "defaultchecked"

    const-string v2, "checked"

    const-string v3, "readonly"

    const-string v4, "disabled"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "LINK"

    const-string v1, "link"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MENU"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OBJECT"

    const-string v1, "declare"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OPTGROUP"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OPTION"

    const-string v1, "default-selected"

    const-string v2, "selected"

    const-string v3, "disabled"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "SCRIPT"

    const-string v1, "defer"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SELECT"

    const-string v1, "multiple"

    const-string v2, "disabled"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "STYLE"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TD"

    const-string v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TH"

    const-string v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TEXTAREA"

    const-string v1, "disabled"

    const-string v2, "readonly"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "UL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charFromName(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static defineBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static defineElement(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static defineEntity(Ljava/lang/String;C)V
    .locals 2

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static fromChar(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static initialize()V
    .locals 9

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    const-class v3, Lmf/org/apache/xml/serialize/HTMLdtd;

    const-string v4, "HTMLEntities.res"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "ASCII"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-le v6, v0, :cond_5

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v7, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineEntity(Ljava/lang/String;C)V

    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "http://apache.org/xml/serializer"

    const-string v5, "ResourceNotFound"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "HTMLEntities.res"

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "http://apache.org/xml/serializer"

    const-string v6, "ResourceNotLoaded"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "HTMLEntities.res"

    aput-object v8, v7, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_8
    throw v0
.end method

.method public static isBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isClosing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x40

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "DT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "DD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "LI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "OPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "THEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "TFOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "TBODY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "TR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "COLGROUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "TH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const/16 p1, 0x4000

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_7
    :goto_1
    const/16 p1, 0x200

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    const/16 p1, 0x100

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_9
    :goto_3
    const/16 p1, 0x80

    invoke-static {p0, p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static isElement(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isElementContent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isOnlyOpening(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isOptionalClosing(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isPreserveSpace(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "href"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "src"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
