.class public Lmf/org/apache/xml/resolver/apps/xparse;
.super Ljava/lang/Object;
.source "xparse.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    move v7, v1

    move v5, v2

    move v6, v5

    move v8, v4

    move-object v4, v3

    move v3, v7

    :goto_0
    array-length v9, p0

    if-lt v3, v9, :cond_12

    if-nez v4, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Usage: org.apache.xml.resolver.apps.xparse [opts] xmlfile"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    sput-boolean v6, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    sput-boolean v5, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    new-instance v9, Lmf/org/apache/xml/resolver/tools/ResolvingParser;

    invoke-direct {v9}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;-><init>()V

    invoke-virtual {v9}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v10

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lt v1, p0, :cond_11

    new-instance p0, Lmf/org/apache/xml/resolver/apps/XParseError;

    invoke-direct {p0, v2, v7}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    invoke-virtual {p0, v8}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    invoke-virtual {v9, p0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-eqz v6, :cond_1

    const-string v0, "validating"

    goto :goto_2

    :cond_1
    const-string v0, "well-formed"

    :goto_2
    if-eqz v5, :cond_2

    const-string v1, "namespace-aware"

    goto :goto_3

    :cond_2
    const-string v1, "namespace-ignorant"

    :goto_3
    if-lez v8, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Attempting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " parse"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_0
    invoke-virtual {v9, v4}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SAX Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v5, v3, v0

    const-wide/16 v6, 0x0

    if-lez v5, :cond_4

    div-long v9, v3, v0

    rem-long/2addr v3, v0

    goto :goto_5

    :cond_4
    move-wide v9, v6

    :goto_5
    const-wide/16 v0, 0x3c

    cmp-long v5, v9, v0

    if-lez v5, :cond_5

    div-long v11, v9, v0

    rem-long/2addr v9, v0

    goto :goto_6

    :cond_5
    move-wide v11, v6

    :goto_6
    cmp-long v5, v11, v0

    if-lez v5, :cond_6

    div-long v13, v11, v0

    rem-long/2addr v11, v0

    goto :goto_7

    :cond_6
    move-wide v13, v6

    :goto_7
    if-lez v8, :cond_f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parse "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "failed "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "succeeded "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    cmp-long v0, v13, v6

    if-lez v0, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    if-gtz v0, :cond_9

    cmp-long v0, v11, v6

    if-lez v0, :cond_a

    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "with "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v1

    if-lez v0, :cond_c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-le v0, v2, :cond_b

    const-string v0, "s"

    goto :goto_9

    :cond_b
    const-string v0, ""

    :goto_9
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "no errors and "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_a
    if-lez v1, :cond_e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-le v1, v2, :cond_d

    const-string v1, "s"

    goto :goto_b

    :cond_d
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "no warnings."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result p0

    if-lez p0, :cond_10

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_10
    return-void

    :cond_11
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v10, p0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_12
    aget-object v9, p0, v3

    const-string v10, "-c"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    add-int/lit8 v3, v3, 0x1

    aget-object v9, p0, v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_13
    aget-object v9, p0, v3

    const-string v10, "-w"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    move v6, v1

    goto :goto_d

    :cond_14
    aget-object v9, p0, v3

    const-string v10, "-v"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    move v6, v2

    goto :goto_d

    :cond_15
    aget-object v9, p0, v3

    const-string v10, "-n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    move v5, v1

    goto :goto_d

    :cond_16
    aget-object v9, p0, v3

    const-string v10, "-N"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    move v5, v2

    goto :goto_d

    :cond_17
    aget-object v9, p0, v3

    const-string v10, "-d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    add-int/lit8 v3, v3, 0x1

    aget-object v9, p0, v3

    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1b

    sget-object v10, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v10, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x2

    if-le v9, v7, :cond_18

    move v7, v2

    goto :goto_d

    :cond_18
    move v7, v1

    goto :goto_d

    :cond_19
    aget-object v9, p0, v3

    const-string v10, "-E"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    add-int/lit8 v3, v3, 0x1

    aget-object v9, p0, v3

    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ltz v9, :cond_1b

    move v8, v9

    goto :goto_d

    :cond_1a
    aget-object v4, p0, v3

    :catch_2
    :cond_1b
    :goto_d
    add-int/2addr v3, v2

    goto/16 :goto_0
.end method
