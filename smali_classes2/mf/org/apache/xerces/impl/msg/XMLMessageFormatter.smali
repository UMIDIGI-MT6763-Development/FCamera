.class public Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
.super Ljava/lang/Object;
.source "XMLMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XMLNS_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xml-names-19990114"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v0, :cond_1

    const-string v0, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    :cond_1
    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_2

    :try_start_1
    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v0, "FormatFailed"

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    if-nez p1, :cond_6

    array-length p1, p3

    if-lez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-lt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v1, p3, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p1, p2

    :cond_6
    return-object p1

    :catch_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string p3, "BadMessageKey"

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/util/MissingResourceException;

    invoke-direct {p3, p2, p1, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p3
.end method
