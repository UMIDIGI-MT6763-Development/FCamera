.class public Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;
.super Ljava/lang/Object;
.source "XIncludeMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XINCLUDE_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/xinclude"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v0, :cond_1

    const-string v0, "mf.org.apache.xerces.impl.msg.XIncludeMessages"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fLocale:Ljava/util/Locale;

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string p3, "FormatFailed"

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string p3, "BadMessageKey"

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/util/MissingResourceException;

    const-string v0, "mf.org.apache.xerces.impl.msg.XIncludeMessages"

    invoke-direct {p3, p1, v0, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p3
.end method
