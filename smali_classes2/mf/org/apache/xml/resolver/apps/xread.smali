.class public Lmf/org/apache/xml/resolver/apps/xread;
.super Ljava/lang/Object;
.source "xread.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    move v8, v2

    move v9, v8

    move v6, v3

    move v7, v6

    move v10, v5

    move-object v5, v4

    move v4, v9

    :goto_0
    array-length v11, v0

    if-lt v4, v11, :cond_13

    if-nez v5, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Usage: org.apache.xml.resolver.apps.xread [opts] xmlfile"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v11, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;

    invoke-direct {v11}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;-><init>()V

    :try_start_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v11, v0, v6}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v11, v0, v7}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    if-eqz v8, :cond_1

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v11, v0, v3}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v11}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v12

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_12

    new-instance v1, Lmf/org/apache/xml/resolver/apps/XParseError;

    invoke-direct {v1, v3, v9}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    invoke-virtual {v1, v10}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    invoke-virtual {v11, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-eqz v7, :cond_2

    const-string v0, "validating"

    goto :goto_2

    :cond_2
    const-string v0, "well-formed"

    :goto_2
    if-eqz v6, :cond_3

    const-string v2, "namespace-aware"

    goto :goto_3

    :cond_3
    const-string v2, "namespace-ignorant"

    :goto_3
    if-lez v10, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Attempting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " parse"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :try_start_1
    invoke-virtual {v11, v5}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SAX Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    const-wide/16 v8, 0x0

    if-lez v0, :cond_5

    div-long v11, v4, v6

    rem-long/2addr v4, v6

    goto :goto_5

    :cond_5
    move-wide v11, v8

    :goto_5
    const-wide/16 v6, 0x3c

    cmp-long v0, v11, v6

    if-lez v0, :cond_6

    div-long v13, v11, v6

    rem-long/2addr v11, v6

    goto :goto_6

    :cond_6
    move-wide v13, v8

    :goto_6
    cmp-long v0, v13, v6

    if-lez v0, :cond_7

    div-long v15, v13, v6

    rem-long/2addr v13, v6

    goto :goto_7

    :cond_7
    move-wide v15, v8

    :goto_7
    if-lez v10, :cond_10

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "failed "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "succeeded "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    cmp-long v0, v15, v8

    if-lez v0, :cond_9

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    if-gtz v0, :cond_a

    cmp-long v0, v13, v8

    if-lez v0, :cond_b

    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "with "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v2

    if-lez v0, :cond_d

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-le v0, v3, :cond_c

    const-string v0, "s"

    goto :goto_9

    :cond_c
    const-string v0, ""

    :goto_9
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "no errors and "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_a
    if-lez v2, :cond_f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " warning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-le v2, v3, :cond_e

    const-string v2, "s"

    goto :goto_b

    :cond_e
    const-string v2, ""

    :goto_b
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "no warnings."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_11
    return-void

    :cond_12
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    aget-object v11, v0, v4

    const-string v12, "-c"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    add-int/lit8 v4, v4, 0x1

    aget-object v11, v0, v4

    invoke-virtual {v1, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_14
    aget-object v11, v0, v4

    const-string v12, "-w"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    move v7, v2

    goto/16 :goto_d

    :cond_15
    aget-object v11, v0, v4

    const-string v12, "-v"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    move v7, v3

    goto :goto_d

    :cond_16
    aget-object v11, v0, v4

    const-string v12, "-s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v8, v3

    goto :goto_d

    :cond_17
    aget-object v11, v0, v4

    const-string v12, "-n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move v6, v2

    goto :goto_d

    :cond_18
    aget-object v11, v0, v4

    const-string v12, "-N"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    move v6, v3

    goto :goto_d

    :cond_19
    aget-object v11, v0, v4

    const-string v12, "-d"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    add-int/lit8 v4, v4, 0x1

    aget-object v11, v0, v4

    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1d

    sget-object v12, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v12, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v9, 0x2

    if-le v11, v9, :cond_1a

    move v9, v3

    goto :goto_d

    :cond_1a
    move v9, v2

    goto :goto_d

    :cond_1b
    aget-object v11, v0, v4

    const-string v12, "-E"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    add-int/lit8 v4, v4, 0x1

    aget-object v11, v0, v4

    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ltz v11, :cond_1d

    move v10, v11

    goto :goto_d

    :cond_1c
    aget-object v5, v0, v4

    :catch_3
    :cond_1d
    :goto_d
    add-int/2addr v4, v3

    goto/16 :goto_0
.end method
