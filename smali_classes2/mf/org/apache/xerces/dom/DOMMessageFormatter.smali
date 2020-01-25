.class public Lmf/org/apache/xerces/dom/DOMMessageFormatter;
.super Ljava/lang/Object;
.source "DOMMessageFormatter.java"


# static fields
.field public static final DOM_DOMAIN:Ljava/lang/String; = "http://www.w3.org/dom/DOMTR"

.field public static final SERIALIZER_DOMAIN:Ljava/lang/String; = "http://apache.org/xml/serializer"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"

.field private static domResourceBundle:Ljava/util/ResourceBundle;

.field private static locale:Ljava/util/Locale;

.field private static serResourceBundle:Ljava/util/ResourceBundle;

.field private static xmlResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->init()V

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown domain"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {p0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "FormatFailed"

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    if-nez p0, :cond_6

    array-length p0, p2

    if-lez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    if-lez v0, :cond_4

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v1, p2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move-object p0, p1

    :cond_6
    return-object p0

    :catch_1
    const-string p0, "BadMessageKey"

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/util/MissingResourceException;

    invoke-direct {p2, p1, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method static getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const-string v0, "http://www.w3.org/dom/DOMTR"

    if-eq p0, v0, :cond_5

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eq p0, v0, :cond_4

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "http://apache.org/xml/serializer"

    if-eq p0, v0, :cond_3

    const-string v0, "http://apache.org/xml/serializer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public static init()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    const-string v1, "mf.org.apache.xerces.impl.msg.DOMMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "mf.org.apache.xerces.impl.msg.XMLSerializerMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .locals 0

    sput-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method
